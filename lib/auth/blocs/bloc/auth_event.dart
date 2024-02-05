part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

enum AuthResponseStatus { initial, loading, valid, nouser, error }

enum AuthSubmitStatus { initial, loading, success, validated, error, signup }

///To check if user is already signed in or not
class CheckAuth extends AuthEvent {
  const CheckAuth();
}

///To try to verify if phone number is associated with a user or not
class LoginEvent extends AuthEvent {
  const LoginEvent({
    required this.gymId,
    required this.phoneNumber,
  });
  final String gymId;
  final String phoneNumber;

  @override
  List<Object> get props => [gymId, phoneNumber];
}

///To sign-up a user associated with a gym
final class RegisterEvent extends AuthEvent {
  const RegisterEvent(
      {required this.firstName, required this.lastName, required this.email});
  final String firstName;
  final String lastName;
  final String email;

  @override
  List<Object> get props => [firstName, lastName, email];
}

///To select a gym from login page
final class SelectGymEvent extends AuthEvent {
  const SelectGymEvent({required this.gymId});
  final String gymId;

  @override
  List<Object> get props => [gymId];
}
