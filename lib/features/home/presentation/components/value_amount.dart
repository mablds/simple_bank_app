import 'package:flutter/material.dart';

class ValueAmount extends StatelessWidget {
  const ValueAmount({
    super.key,
    required this.accountValue,
    required this.containerLabel,
    this.valueLabel,
  });

  final String accountValue;
  final String containerLabel;
  final String? valueLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                containerLabel,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
          if (valueLabel != null)
            Text(
              '  $valueLabel',
              style: const TextStyle(
                fontSize: 13,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                decorationStyle: TextDecorationStyle.solid,
                height: 2,
              ),
            )
          else
            const SizedBox(),
          Text(
            '  $accountValue',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              decorationStyle: TextDecorationStyle.solid,
              height: 1.8,
            ),
          ),
        ],
      ),
    );
  }
}
