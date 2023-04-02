import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bank_app/features/login/pages/bloc/login_cubit.dart';
import 'package:simple_bank_app/features/login/pages/bloc/login_state.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state.status == LoginStatus.success) {
            print('Cubit funcionou');
            //Navigator.of(context).pushReplacementNamed('/home');
          }
        },
        builder: (context, state) {
          return Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(labelText: 'Password'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      // Dispatch login event to the authentication cubit
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
          );
        },
      ),
    );
  }
}
