import 'package:flutter/material.dart';

class NutritionGoal extends StatelessWidget {
  const NutritionGoal({
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
