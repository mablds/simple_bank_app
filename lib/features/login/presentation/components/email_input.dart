import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

const _emailInputLabel = 'Email';
const _emailValidatorErrorMsg = 'Insira um endereço de e-mail válido';

class EmailInput extends StatelessWidget {
  const EmailInput({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: _emailInputLabel,
      ),
      validator: EmailValidator(errorText: _emailValidatorErrorMsg),
    );
  }
}
