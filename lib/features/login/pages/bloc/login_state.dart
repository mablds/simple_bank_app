import 'package:equatable/equatable.dart';

enum LoginStatus {
  initial,
  error,
  success,
  loading,
  invalidCredentials,
}

class LoginState extends Equatable {
  const LoginState({
    this.status = LoginStatus.initial,
  });

  final LoginStatus status;

  LoginState copyWith({
    LoginStatus? status,
  }) =>
      LoginState(
        status: status ?? this.status,
      );

  @override
  List<Object?> get props => [status];
}