import 'package:allup_user_app/auth/repositories/auth_repository.dart';
import 'package:allup_user_app/auth/schemas/brand_list.graphql.dart';
import 'package:allup_user_app/schema.graphql.dart';
import 'package:allup_user_app/widgets/cache_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';

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
        final response =
            await authRepository.getBrandsList(appId: '1684285034-ufc');
        final accessToken = CacheHelper.getCachedAccessToken();
        if (accessToken == null) {
          emit(state.copyWith(
              selectedGymId: response.brandList.list!.first!.gyms!.first!.id,
              authResponseStatus: AuthResponseStatus.nouser,
              gyms: response.brandList.list!.first!.gyms,
              brandList: response.brandList.list));
        } else {
          emit(state.copyWith(
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
              print(response.sendOTP.error);
              emit(state.copyWith(
                  loginSubmitResponseStatus: AuthSubmitStatus.signup));
            } else if (response.sendOTP.error ==
                Enum$SendOTPPError.LEAD_SOFT_DELETED) {
              print(response.sendOTP.error);
              emit(state.copyWith(
                  loginSubmitResponseStatus: AuthSubmitStatus.error));
            } else {
              print(response.sendOTP.error);
              emit(state.copyWith(
                  loginSubmitResponseStatus: AuthSubmitStatus.error));
            }
          } else {
            print(response.sendOTP.send);
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
  }
  final AuthRepository authRepository;
}
