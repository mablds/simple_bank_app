import 'package:flutter/material.dart';

const _appTitle = 'Simple Bank';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          _appTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.lightGreen,
            height: 5,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
