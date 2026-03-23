import 'package:flutter/material.dart';

class HomeCharts extends StatelessWidget {
  const HomeCharts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text(
          'TBD',
          style: textStyle,
        ),
      ],
    );
  }
}
