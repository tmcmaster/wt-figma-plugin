import 'package:flutter/material.dart';

class ActivityGoal extends StatelessWidget {
  const ActivityGoal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(),
        Column(
          children: [
            const Text('Activity goal'),
            Column(
              children: const [
                Text('mins'),
                Text('25 / 45'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
