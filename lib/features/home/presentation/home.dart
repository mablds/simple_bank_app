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
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
              color: Colors.purple,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 200.0,
                          alignment: Alignment.centerLeft,
                          child: const Icon(
                            Icons.person_outlined,
                            color: Colors.white,
                            size: 40.0,
                          ),
                        ),
                        const Icon(
                          Icons.visibility_outlined,
                          color: Colors.white,
                          size: 33.0,
                        ),
                        const Icon(
                          Icons.help_outline,
                          color: Colors.white,
                          size: 33.0,
                        ),
                        const Icon(
                          Icons.mark_email_unread_outlined,
                          color: Colors.white,
                          size: 33.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    child: const Text(
                      'Olá, Marcelo Arthur!',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
