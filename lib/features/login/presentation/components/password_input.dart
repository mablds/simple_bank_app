import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

const _passwordInputLabel = 'Password';
const _passwordValidatorErrorMsg = 'Insira uma senha válida';

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
      decoration: const InputDecoration(labelText: _passwordInputLabel),
      validator: MinLengthValidator(3, errorText: _passwordValidatorErrorMsg),
    );
  }
}
