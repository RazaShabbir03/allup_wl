part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState({
    this.loginSubmitResponseStatus = AuthSubmitStatus.initial,
    this.authResponseStatus = AuthResponseStatus.initial,
    this.loginErrorMessage = '',
    this.brandList = const [],
    this.selectedGymId,
    this.gyms = const [],
  });
  final AuthSubmitStatus loginSubmitResponseStatus;
  final AuthResponseStatus? authResponseStatus;
  final String loginErrorMessage;
  final List<Query$BrandsList$brandList$list?> brandList;
  final List<Query$BrandsList$brandList$list$gyms?> gyms;
  final String? selectedGymId;

  //create a copy of the state with a new loginSubmitResponseStatus
  AuthState copyWith(
      {AuthSubmitStatus? loginSubmitResponseStatus,
      AuthResponseStatus? authResponseStatus,
      String? loginErrorMessage,
      List<Query$BrandsList$brandList$list?>? brandList,
      List<Query$BrandsList$brandList$list$gyms?>? gyms,
      String? selectedGymId}) {
    return AuthState(
        loginSubmitResponseStatus:
            loginSubmitResponseStatus ?? this.loginSubmitResponseStatus,
        loginErrorMessage: loginErrorMessage ?? this.loginErrorMessage,
        authResponseStatus: authResponseStatus,
        brandList: brandList ?? this.brandList,
        selectedGymId: selectedGymId ?? this.selectedGymId,
        gyms: gyms ?? this.gyms);
  }

  @override
  List<Object> get props => [
        loginSubmitResponseStatus,
        loginErrorMessage,
        authResponseStatus ?? '',
        brandList,
        selectedGymId ?? '',
        gyms,
      ];
}

final class AuthInitial extends AuthState {}

final class LogoutEvent extends AuthState {}
