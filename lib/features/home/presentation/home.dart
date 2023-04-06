import 'package:flutter/material.dart';

const _appTitle = 'Simple Bank';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(113.0),
              color: Colors.purple,
              child: Row(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
