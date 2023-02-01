import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wt_figma_to_flutter/models/figma_node_definition.dart';
import 'package:wt_models/wt_models.dart';

part 'figma_text_definition.freezed.dart';
part 'figma_text_definition.g.dart';

@freezed
class FigmaTextDefinition with JsonSupport, FigmaNodeDefinition, _$FigmaTextDefinition {
  static final from = FromModelTo<FigmaTextDefinition>();

  const FigmaTextDefinition._();

  // TODO: add json annotations for defaults
  const factory FigmaTextDefinition({
    @Default('') String name,
    @Default('') String id,
    @Default('') String type,
    @Default('') String characters,
    @Default(0.0) double x,
    @Default(0.0) double y,
    @Default(0.0) double width,
    @Default(0.0) double height,
  }) = _FigmaTextDefinition;

  factory FigmaTextDefinition.fromJson(Map<String, Object?> json) =>
      _$FigmaTextDefinitionFromJson(json);

  static bool isText(dynamic node) {
    final type = node is Map<String, dynamic>
        ? node['type']
        : node is FigmaNodeDefinition
            ? node.type
            : null;
    return type == 'TEXT';
  }
}
