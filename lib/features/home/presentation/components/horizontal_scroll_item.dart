import 'package:flutter/material.dart';

class ScrollItem extends StatelessWidget {
  const ScrollItem({
    required this.iconLabel,
    super.key,
    this.icon,
  });

  final IconData? icon;
  final String iconLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      padding: const EdgeInsets.all(9),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black12,
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          iconLabel,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
