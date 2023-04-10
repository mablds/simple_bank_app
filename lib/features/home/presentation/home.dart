import 'package:flutter/material.dart';
import 'package:simple_bank_app/features/home/presentation/components/account_amount.dart';
import 'package:simple_bank_app/features/login/data/models/responses/user_account_model.dart';
import 'components/header.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
    required this.userLogged,
  });

  final UserAccount userLogged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Header(userName: userLogged.owner!),
            AccountAmount(accountValue: userLogged.value!),
          ],
        ),
      ),
    );
  }
}
