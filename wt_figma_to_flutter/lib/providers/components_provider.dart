import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wt_figma_to_flutter/models/figma_container_definition.dart';
import 'package:wt_figma_to_flutter/models/figma_node_definition.dart';

class FigmaComponentsStateNotifier extends StateNotifier<List<FigmaNodeDefinition>> {
  static final provider =
      StateNotifierProvider<FigmaComponentsStateNotifier, List<FigmaNodeDefinition>>(
    name: 'figma Components',
    (ref) => FigmaComponentsStateNotifier(),
  );

  FigmaComponentsStateNotifier() : super([]) {
    Future.delayed(const Duration(milliseconds: 10), () {
      final file = File(
          '/Users/timmcmaster/Workspace/scm/misc/wt-figma-plugin/wt_figma_to_flutter/data/components.json');
      final jsonString = file.readAsStringSync();
      final jsonList = json.decode(jsonString) as List<dynamic>;
      final List<Map<String, dynamic>> listOfMaps =
          jsonList.map((e) => e as Map<String, dynamic>).toList();
      state = FigmaContainerDefinition.from.jsonListToModelList(listOfMaps);
    });
  }
}
