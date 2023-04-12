import 'package:flutter/material.dart';
import 'package:simple_bank_app/features/home/presentation/components/value_amount.dart';
import 'package:simple_bank_app/features/login/data/models/responses/user_account_model.dart';
import 'components/header.dart';
import 'components/horizontal_scroll.dart';

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
            ValueAmount(
              accountValue: userLogged.value!,
              containerLabel: 'Conta',
            ),
            const HorizontalScroll(),
            const ValueAmount(
              accountValue: 'R\$ 300,00',
              containerLabel: 'Cartão de crédito',
              valueLabel: 'Fatura atual',
            ),
          ],
        ),
      ),
    );
  }
}
