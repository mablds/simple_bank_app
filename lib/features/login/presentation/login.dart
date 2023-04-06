import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bank_app/features/home/presentation/home.dart';
import 'package:simple_bank_app/features/login/presentation/bloc/login_cubit.dart';
import 'package:simple_bank_app/features/login/presentation/bloc/login_state.dart';
import 'package:simple_bank_app/features/login/presentation/components/email_input.dart';
import 'package:simple_bank_app/features/login/presentation/components/password_input.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state.status == LoginStatus.success) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Yay! A SnackBar!'),
              ),
            );
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
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
                  EmailInput(emailController: _emailController),
                  const SizedBox(height: 16.0),
                  PasswordInput(controllerPassword: _passwordController),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await context.read<LoginCubit>().login(
                              email: _emailController.text,
                              password: _passwordController.text,
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
