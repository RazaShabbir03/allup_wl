part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState({
    this.loginSubmitResponseStatus = AuthSubmitStatus.initial,
    this.authResponseStatus = AuthResponseStatus.initial,
    this.otpErrorMessage = '',
    this.otpStatus = OTPStatus.initial,
    this.loginErrorMessage = '',
    this.brandList = const [],
    this.selectedGymId,
    this.gyms = const [],
  });
  final AuthSubmitStatus? loginSubmitResponseStatus;
  final AuthResponseStatus? authResponseStatus;
  final OTPStatus? otpStatus;
  final String otpErrorMessage;
  final String loginErrorMessage;
  final List<Query$BrandsList$brandList$list?> brandList;
  final List<Query$BrandsList$brandList$list$gyms?> gyms;
  final String? selectedGymId;

  //create a copy of the state with a new loginSubmitResponseStatus
  AuthState copyWith(
      {AuthSubmitStatus? loginSubmitResponseStatus,
      AuthResponseStatus? authResponseStatus,
      OTPStatus? otpStatus,
      String? otpErrorMessage,
      String? loginErrorMessage,
      List<Query$BrandsList$brandList$list?>? brandList,
      List<Query$BrandsList$brandList$list$gyms?>? gyms,
      String? selectedGymId}) {
    return AuthState(
        loginSubmitResponseStatus: loginSubmitResponseStatus,
        loginErrorMessage: loginErrorMessage ?? this.loginErrorMessage,
        otpStatus: otpStatus,
        otpErrorMessage: otpErrorMessage ?? this.otpErrorMessage,
        authResponseStatus: authResponseStatus,
        brandList: brandList ?? this.brandList,
        selectedGymId: selectedGymId ?? this.selectedGymId,
        gyms: gyms ?? this.gyms);
  }

  @override
  List<Object> get props => [
        loginSubmitResponseStatus ?? '',
        loginErrorMessage,
        otpStatus ?? '',
        otpErrorMessage ?? '',
        authResponseStatus ?? '',
        brandList,
        selectedGymId ?? '',
        gyms,
      ];
}

final class AuthInitial extends AuthState {}
