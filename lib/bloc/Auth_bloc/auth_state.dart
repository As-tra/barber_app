part of 'auth_bloc.dart';

sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class LoginSuccess extends AuthState {}

final class LoginFailure extends AuthState {
  final FirebaseAuthException error;
  LoginFailure({required this.error});
}
final class AdminLoginSuccess extends AuthState {}

final class AdminLoginFailure extends AuthState {
  final FirebaseAuthException error;
  AdminLoginFailure({required this.error});
}
final class RegisterSuccess extends AuthState {}

final class RegisterFailure extends AuthState {
  final FirebaseAuthException error;
  RegisterFailure({required this.error});
}
