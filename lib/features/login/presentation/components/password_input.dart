import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
    required this.controllerPassword,
  });

  final TextEditingController controllerPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controllerPassword,
      obscureText: true,
      decoration: const InputDecoration(labelText: 'Password'),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        return null;
      },
    );
  }
}
