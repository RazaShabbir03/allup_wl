part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState(
      {this.loginSubmitResponseStatus = AuthSubmitStatus.initial,
      this.authResponseStatus = AuthResponseStatus.initial,
      this.otpErrorMessage = '',
      this.otpStatus = OTPStatus.initial,
      this.loginErrorMessage = '',
      this.brandList = const [],
      this.selectedGymId,
      this.gymName,
      this.gyms = const [],
      this.accessToken});
  final AuthSubmitStatus? loginSubmitResponseStatus;
  final AuthResponseStatus? authResponseStatus;
  final String? gymName;
  final OTPStatus? otpStatus;
  final String otpErrorMessage;
  final String loginErrorMessage;
  final List<Query$BrandsList$brandList$list?> brandList;
  final List<Query$BrandsList$brandList$list$gyms?> gyms;
  final String? selectedGymId;
  final String? accessToken;

  //create a copy of the state with a new loginSubmitResponseStatus
  AuthState copyWith(
      {AuthSubmitStatus? loginSubmitResponseStatus,
      AuthResponseStatus? authResponseStatus,
      OTPStatus? otpStatus,
      String? gymName,
      String? otpErrorMessage,
      String? loginErrorMessage,
      List<Query$BrandsList$brandList$list?>? brandList,
      List<Query$BrandsList$brandList$list$gyms?>? gyms,
      String? accessToken,
      String? selectedGymId}) {
    return AuthState(
        loginSubmitResponseStatus: loginSubmitResponseStatus,
        loginErrorMessage: loginErrorMessage ?? this.loginErrorMessage,
        otpStatus: otpStatus,
        gymName: gymName ?? this.gymName,
        otpErrorMessage: otpErrorMessage ?? this.otpErrorMessage,
        authResponseStatus: authResponseStatus,
        brandList: brandList ?? this.brandList,
        selectedGymId: selectedGymId ?? this.selectedGymId,
        accessToken: accessToken ?? this.accessToken,
        gyms: gyms ?? this.gyms);
  }

  @override
  List<Object> get props => [
        loginSubmitResponseStatus ?? '',
        loginErrorMessage,
        otpStatus ?? '',
        gymName ?? '',
        otpErrorMessage,
        authResponseStatus ?? '',
        brandList,
        selectedGymId ?? '',
        gyms,
        accessToken ?? ''
      ];
}

final class AuthInitial extends AuthState {}
