import 'package:allup_user_app/auth/repositories/auth_repository.dart';
import 'package:allup_user_app/auth/schemas/brand_list.graphql.dart';
import 'package:allup_user_app/constants/app_constants.dart';
import 'package:allup_user_app/schema.graphql.dart';
import 'package:allup_user_app/widgets/cache_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.authRepository,
  }) : super(AuthInitial()) {
    ///To check if user is already signed in or not
    on<CheckAuth>((event, emit) async {
      try {
        emit(state.copyWith(
            loginSubmitResponseStatus: AuthSubmitStatus.loading));
        final String currentTimeZone =
            await FlutterNativeTimezone.getLocalTimezone();
        emit(state.copyWith(currentTimeZone: currentTimeZone));
        final response =
            await authRepository.getBrandsList(appId: AppConstants.appId);
        final accessToken = CacheHelper.getCachedAccessToken();
        if (accessToken == null) {
          emit(state.copyWith(
              selectedGymId: response.brandList.list!.first!.gyms!.first!.id,
              authResponseStatus: AuthResponseStatus.nouser,
              gyms: response.brandList.list!.first!.gyms,
              brandList: response.brandList.list));
        } else {
          final selectedGymId = CacheHelper.getCachedGymId();
          final gymName = CacheHelper.getCachedGymName();

          emit(state.copyWith(
              gymName: gymName,
              accessToken: accessToken,
              selectedGymId: selectedGymId,
              gyms: response.brandList.list!.first!.gyms,
              authResponseStatus: AuthResponseStatus.valid,
              brandList: response.brandList.list));
        }
      } catch (e) {
        emit(state.copyWith(
          authResponseStatus: AuthResponseStatus.error,
        ));
      }
    });

    on<SelectGymEvent>((event, emit) async {
      emit(state.copyWith(
          selectedGymId: event.gymId,
          loginSubmitResponseStatus: AuthSubmitStatus.initial));
    });

    ///To verify the OTP

    on<VerifyOTPEvent>((event, emit) async {
      try {
        emit(state.copyWith(otpStatus: OTPStatus.loading));
        final response = await authRepository.verifyOTP(
            gymId: state.selectedGymId!,
            contactNumber: event.phoneNumber,
            otp: event.otp,
            refId: event.refId);
        if (response.verifyOTP.error != null) {
          if (response.verifyOTP.errorMessage == 'INVALID_OTP') {
            emit(state.copyWith(
                otpStatus: OTPStatus.error,
                otpErrorMessage: 'The OTP entered is invalid'));
          } else {
            emit(state.copyWith(
                otpStatus: OTPStatus.error,
                otpErrorMessage: response.verifyOTP.errorMessage));
          }
        } else {
          final gymName = state.gyms
              .firstWhere((element) => element!.id == state.selectedGymId)!
              .name;
          await CacheHelper.cacheGymName(gymName);
          await CacheHelper.cacheAccessToken(response.verifyOTP.accessToken!);
          await CacheHelper.cacheGymId(state.selectedGymId!);
          emit(state.copyWith(
            gymName: gymName,
            otpStatus: OTPStatus.success,
            accessToken: response.verifyOTP.accessToken,
          ));
        }
      } catch (e) {
        emit(state.copyWith(loginSubmitResponseStatus: AuthSubmitStatus.error));
      }
    });

    ///To try to verify if phone number is associated with a user or not
    on<LoginEvent>(
      (event, emit) async {
        try {
          emit(state.copyWith(
              loginSubmitResponseStatus: AuthSubmitStatus.loading));
          final response = await authRepository.sendOTP(
            gymId: event.gymId,
            contactNumber: event.phoneNumber,
          );
          if (response.sendOTP.error != null) {
            if (response.sendOTP.error == Enum$SendOTPPError.INVALID_LEAD) {
              emit(state.copyWith(
                  loginSubmitResponseStatus: AuthSubmitStatus.signup));
            } else if (response.sendOTP.error ==
                Enum$SendOTPPError.LEAD_SOFT_DELETED) {
              emit(state.copyWith(
                  loginSubmitResponseStatus: AuthSubmitStatus.softDelete));
            } else {
              emit(state.copyWith(
                  loginSubmitResponseStatus: AuthSubmitStatus.error));
            }
          } else {
            emit(state.copyWith(
                loginSubmitResponseStatus: AuthSubmitStatus.success));
          }

          if (emit.isDone) return;
        } catch (e) {
          emit(state.copyWith(
              loginSubmitResponseStatus: AuthSubmitStatus.error));
        }
      },
      transformer: droppable(),
    );

    ///Logout the user
    on<LogoutEvent>((event, emit) async {
      final response =
          await authRepository.getBrandsList(appId: AppConstants.appId);
      // await HydratedBloc.storage.clear();
      await CacheHelper.clearCache();
      emit(state.copyWith(
        gyms: response.brandList.list!.first!.gyms,
      ));
    });

    ///To sign-up a user associated with a gym
    on<RegisterEvent>((event, emit) async {
      try {
        emit(state.copyWith(
            registerSubmitResponseStatus: AuthSubmitStatus.loading));
        await authRepository.sendOTP(
          gymId: event.gymId,
          contactNumber: event.phoneNumber,
        );
        final response = await authRepository.createTempLead(
          contactNumber: event.phoneNumber,
          gymId: state.selectedGymId!,
          firstName: event.firstName,
          lastName: event.lastName,
          email: event.email,
        );
        if (response.createTemporaryLead?.errorMessage != null) {
          emit(state.copyWith(
              registerSubmitResponseStatus: AuthSubmitStatus.error,
              registerErrorMessage:
                  response.createTemporaryLead!.errorMessage));
        } else {
          emit(state.copyWith(
              refId: response.createTemporaryLead?.customer?.id,
              registerSubmitResponseStatus: AuthSubmitStatus.success));
        }
      } catch (e) {
        emit(state.copyWith(
            registerSubmitResponseStatus: AuthSubmitStatus.error));
      }
    });
  }
  final AuthRepository authRepository;
}
