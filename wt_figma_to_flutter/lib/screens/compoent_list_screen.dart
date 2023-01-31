import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wt_figma_to_flutter/models/figma_container_definition.dart';
import 'package:wt_figma_to_flutter/models/figma_item_definition.dart';
import 'package:wt_figma_to_flutter/models/figma_node_definition.dart';
import 'package:wt_figma_to_flutter/providers/components_provider.dart';

class ComponentListScreen extends ConsumerWidget {
  const ComponentListScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final components = ref.watch(FigmaComponentsStateNotifier.provider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Figma Components'),
        actions: [
          IconButton(
            onPressed: () => _processComponents(components),
            icon: const Icon(Icons.build),
          ),
        ],
      ),
      body: Center(
          child: ListView(
        children: components
            .map((c) => ListTile(
                  title: Text(c.name),
                ))
            .toList(),
      )),
    );
  }

  void _processComponents(List<FigmaNodeDefinition> components) {
    final activityGoal =
        components.where((c) => c.name == 'Activity goal').first as FigmaContainerDefinition;

    String myWidgetClassString = ComponentWidgetBuilder.build(activityGoal);
    File classfile = NameBuilder.createClassFileName(activityGoal.name);
    classfile.writeAsStringSync(myWidgetClassString);
  }
}

class ComponentWidgetBuilder {
  static String build(FigmaContainerDefinition container) {
    String className = NameBuilder.createClassName(container.name);
    return '''
import 'package:flutter/material.dart';

class $className extends StatelessWidget {
  const $className({super.key,});

  @override
  Widget build(BuildContext context) {
    return ${_buildContainer(container)};
  }
}
    ''';
  }

  static String _buildNode(FigmaNodeDefinition node) {
    return FigmaContainerDefinition.isContainer(node)
        ? _buildContainer(node as FigmaContainerDefinition)
        : _buildItem(node as FigmaItemDefinition);
  }

  static String _buildContainer(FigmaContainerDefinition container) {
    final isRow = container.layout.mode == "HORIZONTAL";
    return '''
      ${isRow ? 'Row' : 'Column'}(
      children: [
        ${container.children.map((child) => _buildNode(child)).join(',\n        ')},
      ],
    )
    ''';
  }

  static String _buildItem(FigmaItemDefinition item) {
    return item.type == 'TEXT' ? _buildItemText(item) : _buildItemContainer(item);
  }

  static String _buildItemContainer(FigmaItemDefinition item) {
    return 'Container()';
  }

  static String _buildItemText(FigmaItemDefinition item) {
    return "const Text('')";
  }
}

class NameBuilder {
  static String createClassName(String name) {
    return capitalCase(name.split(' '));
  }

  static File createClassFileName(String name) {
    final fileName = snakeCase(name.split(' '));
    return File('lib/generated/components/$fileName.dart');
  }

  static String capitalCase(List<String> words) {
    final firstWord = capitalise(words.first);
    final restOfWords = words.sublist(1).map((word) => capitalise(word)).toList();
    return [firstWord, ...restOfWords].join();
  }

  static String camelCase(List<String> words) {
    final firstWord = words.first.toLowerCase();
    final restOfWords = words.sublist(1).map((word) => capitalise(word)).toList();
    return [firstWord, ...restOfWords].join();
  }

  static String snakeCase(List<String> words) {
    return words.map((word) => word.toLowerCase()).join('_');
  }

  static String capitalise(String string) {
    return string.isEmpty
        ? string
        : string.length == 1
            ? string.toUpperCase()
            : '${string.substring(0, 1).toUpperCase()}${string.substring(1)}';
  }
}
