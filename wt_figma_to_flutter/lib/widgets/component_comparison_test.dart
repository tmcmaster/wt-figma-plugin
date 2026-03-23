import 'dart:io';

import 'package:flutter/material.dart';

class ComponentComparisonTest extends StatelessWidget {
  final String name;
  final Widget widget;

  const ComponentComparisonTest({
    super.key,
    required this.name,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    final fileName = 'lib/generated/previews/$name.png';
    const headingStyle = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

    print('===>> ${File(fileName).existsSync()}');
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Preview',
                  style: headingStyle,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white24,
                  ),
                ),
                padding: const EdgeInsets.all(4),
                child: Image.file(File(fileName)),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Implementation',
                  style: headingStyle,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white24,
                  ),
                ),
                padding: const EdgeInsets.all(4),
                child: widget,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
