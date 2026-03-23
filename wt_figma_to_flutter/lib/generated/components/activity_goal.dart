import 'dart:io';

import 'package:flutter/material.dart';

class ActivityGoal extends StatelessWidget {
  const ActivityGoal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const fileName = 'lib/generated/previews/tracker.png';
    const textStyle = TextStyle(
      color: Colors.white,
    );
    return Column(
      children: [
        Image.file(File(fileName)),
        Column(
          children: [
            const Text(
              'Activity goal',
              style: textStyle,
            ),
            Column(
              children: const [
                Text(
                  '25 / 45',
                  style: textStyle,
                ),
                Text(
                  'mins',
                  style: textStyle,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
