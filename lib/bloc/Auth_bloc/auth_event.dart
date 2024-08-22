part of 'auth_bloc.dart';

sealed class AuthEvent {}

final class LoginEvent extends AuthEvent {
  final String email, password;

  LoginEvent({required this.email, required this.password});
}
final class AdminLoginEvent extends AuthEvent {
  final String name, password;

  AdminLoginEvent({required this.name, required this.password});
}
final class RegisterEvent extends AuthEvent {
  final String email, password, name;

  RegisterEvent({
    required this.email,
    required this.password,
    required this.name,
  });
}


