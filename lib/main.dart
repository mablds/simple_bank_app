import 'package:flutter/material.dart';

import 'features/home/pages/home.dart';
import 'features/login/pages/login.dart';

void main() => runApp(const SimpleBankApp());

class SimpleBankApp extends StatelessWidget {
  const SimpleBankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => const Home(),
      },
    );
  }
}
