import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wt_figma_to_flutter/models/figma_axis.dart';
import 'package:wt_figma_to_flutter/models/figma_item_definition.dart';
import 'package:wt_figma_to_flutter/models/figma_layout.dart';
import 'package:wt_figma_to_flutter/models/figma_node_definition.dart';
import 'package:wt_models/wt_models.dart';

part 'figma_container_definition.freezed.dart';
part 'figma_container_definition.g.dart';

@freezed
class FigmaContainerDefinition with JsonSupport, FigmaNodeDefinition, _$FigmaContainerDefinition {
  static final from = ToModelFrom(json: _FigmaContainerDefinition.fromJson);
  static final to = FromModelTo();

  const FigmaContainerDefinition._();

  // TODO: add json annotations for defaults
  const factory FigmaContainerDefinition({
    @Default('')
        String name,
    @Default('')
        String id,
    @Default('')
        String type,
    @Default('')
        String description,
    @Default(0)
        double x,
    @Default(0)
        double y,
    @Default(0)
        double width,
    @Default(0)
        double height,
    @Default(FigmaAxis())
        FigmaAxis axis,
    @Default(FigmaLayout())
        FigmaLayout layout,
    @Default([])
    @JsonKey(
      toJson: FigmaContainerDefinition.nodeToJson,
      fromJson: FigmaContainerDefinition.jsonToNode,
    )
        List<FigmaNodeDefinition> children,
  }) = _FigmaContainerDefinition;

  factory FigmaContainerDefinition.fromJson(Map<String, Object?> json) =>
      _$FigmaContainerDefinitionFromJson(json);

  static List<Map<String, dynamic>> nodeToJson(List<FigmaNodeDefinition> list) {
    return list.map((node) => node.toJson()).toList();
  }

  static List<FigmaNodeDefinition> jsonToNode(List<dynamic> list) {
    List<Map<String, dynamic>> mapList = list.map((e) => e as Map<String, dynamic>).toList();
    return mapList
        .map((map) => (isContainer(map)
            ? FigmaContainerDefinition.fromJson(map)
            : FigmaItemDefinition.fromJson(map)) as FigmaNodeDefinition)
        .toList();
  }

  static bool isContainer(dynamic node) {
    final type = node is Map<String, dynamic>
        ? node['type']
        : node is FigmaNodeDefinition
            ? node.type
            : null;

    return (type == 'FRAME' || type == 'GROUP' || type == 'COMPONENT');
  }
}
