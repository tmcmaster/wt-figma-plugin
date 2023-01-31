// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:wt_figma_to_flutter/models/figma_container_definition.dart';

void main() {
  group("Figma Container Definition Tests", () {
    test("Create", () {
      print(const FigmaContainerDefinition());
    });
    test("Read & Write JSON", () {
      final file = File('./data/components.json');
      final jsonString = file.readAsStringSync();
      final jsonList = json.decode(jsonString) as List<dynamic>;
      final List<Map<String, dynamic>> listOfMaps =
          jsonList.map((e) => e as Map<String, dynamic>).toList();
      final components = FigmaContainerDefinition.from.jsonListToModelList(listOfMaps);
      print(components);
      final newJsonList = FigmaContainerDefinition.to.jsonListFromModelList(components);
      final newJsonListString = json.encode(newJsonList);
      File('./data/components.junk.json').writeAsStringSync(newJsonListString);
    });
  });
}
