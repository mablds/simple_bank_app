import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.userName,
  });

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Text(
                  'Olá, $userName!',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
