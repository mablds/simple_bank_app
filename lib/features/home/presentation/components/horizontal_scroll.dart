import 'package:flutter/material.dart';

import 'horizontal_scroll_item.dart';

class HorizontalScroll extends StatelessWidget {
  const HorizontalScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.filled(
          5,
          const ScrollItem(
            iconLabel: 'data',
          ),
        ),
      ),
    );
  }
}
