import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wt_figma_to_flutter/models/figma_node_definition.dart';
import 'package:wt_models/wt_models.dart';

part 'figma_item_definition.freezed.dart';
part 'figma_item_definition.g.dart';

@freezed
class FigmaItemDefinition with JsonSupport, FigmaNodeDefinition, _$FigmaItemDefinition {
  static final from = FromModelTo<FigmaItemDefinition>();

  const FigmaItemDefinition._();

  // TODO: add json annotations for defaults
  const factory FigmaItemDefinition({
    @Default('') String name,
    @Default('') String id,
    @Default('') String type,
    @Default(0.0) double x,
    @Default(0.0) double y,
    @Default(0.0) double width,
    @Default(0.0) double height,
  }) = _FigmaItemDefinition;

  factory FigmaItemDefinition.fromJson(Map<String, Object?> json) =>
      _$FigmaItemDefinitionFromJson(json);
}
