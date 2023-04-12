import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bank_app/features/login/presentation/models/controllers.dart';
import 'package:simple_bank_app/features/login/data/models/responses/user_account_model.dart';

import 'login_state.dart';
import '../../data/models/requests/login_form_model.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState());

  LoginFormControllers loginFormControllers = LoginFormControllers();

  void login(LoginForm loginForm) async {
    emit(state.copyWith(status: LoginStatus.loading));

    final http = Dio();
    final response = await http.post(
      'http://localhost:3000/auth',
      data: loginForm.toJson(),
    );

    if (response.statusCode != HttpStatus.ok) {
      if (response.statusCode == 204 || response.statusCode == 403) {
        emit(state.copyWith(status: LoginStatus.invalidCredentials));
      }
      emit(state.copyWith(status: LoginStatus.error));
    } else {
      emit(
        state.copyWith(
          status: LoginStatus.success,
          userLogged: UserAccount.fromJson(response.data),
        ),
      );
    }
  }
}
