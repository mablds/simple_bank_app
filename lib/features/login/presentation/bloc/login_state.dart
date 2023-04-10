import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:simple_bank_app/features/login/data/models/responses/user_account_model.dart';

enum LoginStatus {
  initial,
  error,
  success,
  loading,
  invalidCredentials,
}

class LoginState extends Equatable {
  LoginState({
    this.status = LoginStatus.initial,
    this.userLogged,
  });

  final LoginStatus status;
  final UserAccount? userLogged;
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();

  LoginState copyWith({
    LoginStatus? status,
    UserAccount? userLogged,
  }) =>
      LoginState(
        status: status ?? this.status,
        userLogged: userLogged ?? this.userLogged,
      );

  @override
  List<Object?> get props => [status];
}
