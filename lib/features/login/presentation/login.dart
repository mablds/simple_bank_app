import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bank_app/features/home/presentation/home.dart';
import 'package:simple_bank_app/features/login/data/models/requests/login_form_model.dart';
import 'package:simple_bank_app/features/login/presentation/bloc/login_cubit.dart';
import 'package:simple_bank_app/features/login/presentation/bloc/login_state.dart';
import 'package:simple_bank_app/features/login/presentation/components/email_input.dart';
import 'package:simple_bank_app/features/login/presentation/components/password_input.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final _formKey = GlobalKey<FormState>();

  void _showInvalidCredentials(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Credenciais inválidas.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    var formControllers = loginCubit.loginFormControllers;

    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state.status == LoginStatus.success) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home(userLogged: state.userLogged!),
              ),
            );
          }

          if (state.status == LoginStatus.invalidCredentials) {
            _showInvalidCredentials(context);
          }
        },
        builder: (context, state) {
          return Form(
            key: _formKey,
            child: Container(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  EmailInput(emailController: formControllers.emailController),
                  const SizedBox(height: 16.0),
                  PasswordInput(
                      controllerPassword: formControllers.passwordController),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        context.read<LoginCubit>().login(
                              LoginForm(
                                email: loginCubit
                                    .loginFormControllers.emailController.text,
                                password: loginCubit.loginFormControllers
                                    .passwordController.text,
                              ),
                            );
                      }
                    },
                    child: const Text('Log In'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
