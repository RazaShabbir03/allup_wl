part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState(
      {this.loginSubmitResponseStatus = AuthSubmitStatus.initial,
      this.registerSubmitResponseStatus = AuthSubmitStatus.initial,
      this.authResponseStatus = AuthResponseStatus.initial,
      this.otpErrorMessage = '',
      this.currentTimeZone = '',
      this.otpStatus = OTPStatus.initial,
      this.loginErrorMessage = '',
      this.registerErrorMessage,
      this.brandList = const [],
      this.selectedGymId,
      this.gymName,
      this.gyms = const [],
      this.accessToken,
      this.refId});
  final AuthSubmitStatus? loginSubmitResponseStatus;
  final AuthSubmitStatus? registerSubmitResponseStatus;
  final AuthResponseStatus? authResponseStatus;
  final String? gymName;
  final String currentTimeZone;
  final OTPStatus? otpStatus;
  final String otpErrorMessage;
  final String loginErrorMessage;
  final String? registerErrorMessage;
  final List<Query$BrandsList$brandList$list?> brandList;
  final List<Query$BrandsList$brandList$list$gyms?> gyms;
  final String? selectedGymId;
  final String? accessToken;
  final String? refId;

  //create a copy of the state with a new loginSubmitResponseStatus
  AuthState copyWith(
      {AuthSubmitStatus? loginSubmitResponseStatus,
      AuthSubmitStatus? registerSubmitResponseStatus,
      AuthResponseStatus? authResponseStatus,
      OTPStatus? otpStatus,
      String? currentTimeZone,
      String? gymName,
      String? otpErrorMessage,
      String? loginErrorMessage,
      String? registerErrorMessage,
      List<Query$BrandsList$brandList$list?>? brandList,
      List<Query$BrandsList$brandList$list$gyms?>? gyms,
      String? accessToken,
      String? selectedGymId,
      String? refId}) {
    return AuthState(
      currentTimeZone: currentTimeZone ?? this.currentTimeZone,
      loginSubmitResponseStatus: loginSubmitResponseStatus,
      registerSubmitResponseStatus: registerSubmitResponseStatus,
      loginErrorMessage: loginErrorMessage ?? this.loginErrorMessage,
      otpStatus: otpStatus,
      gymName: gymName ?? this.gymName,
      otpErrorMessage: otpErrorMessage ?? this.otpErrorMessage,
      registerErrorMessage: registerErrorMessage ?? this.registerErrorMessage,
      authResponseStatus: authResponseStatus,
      brandList: brandList ?? this.brandList,
      selectedGymId: selectedGymId ?? this.selectedGymId,
      accessToken: accessToken ?? this.accessToken,
      gyms: gyms ?? this.gyms,
      refId: refId,
    );
  }

  @override
  List<Object?> get props => [
        loginSubmitResponseStatus,
        registerSubmitResponseStatus,
        loginErrorMessage,
        otpStatus,
        currentTimeZone,
        registerErrorMessage,
        gymName,
        otpErrorMessage,
        authResponseStatus,
        brandList,
        selectedGymId,
        gyms,
        accessToken,
        refId
      ];
}

final class AuthInitial extends AuthState {}
