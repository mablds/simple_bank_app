import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bank_app/features/login/presentation/bloc/login_cubit.dart';

import 'features/home/presentation/home.dart';
import 'features/login/presentation/login.dart';

void main() => runApp(const SimpleBankApp());

class SimpleBankApp extends StatelessWidget {
  const SimpleBankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => LoginCubit(),
        child: Login(),
      ),
    );
  }
}
