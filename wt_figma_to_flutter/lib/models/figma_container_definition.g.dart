// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'figma_container_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FigmaContainerDefinition _$$_FigmaContainerDefinitionFromJson(
        Map<String, dynamic> json) =>
    _$_FigmaContainerDefinition(
      name: json['name'] as String? ?? '',
      id: json['id'] as String? ?? '',
      type: json['type'] as String? ?? '',
      description: json['description'] as String? ?? '',
      x: (json['x'] as num?)?.toDouble() ?? 0,
      y: (json['y'] as num?)?.toDouble() ?? 0,
      width: (json['width'] as num?)?.toDouble() ?? 0,
      height: (json['height'] as num?)?.toDouble() ?? 0,
      axis: json['axis'] == null
          ? const FigmaAxis()
          : FigmaAxis.fromJson(json['axis'] as Map<String, dynamic>),
      layout: json['layout'] == null
          ? const FigmaLayout()
          : FigmaLayout.fromJson(json['layout'] as Map<String, dynamic>),
      children: json['children'] == null
          ? const []
          : FigmaContainerDefinition.jsonToNode(json['children'] as List),
    );

Map<String, dynamic> _$$_FigmaContainerDefinitionToJson(
        _$_FigmaContainerDefinition instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'type': instance.type,
      'description': instance.description,
      'x': instance.x,
      'y': instance.y,
      'width': instance.width,
      'height': instance.height,
      'axis': instance.axis,
      'layout': instance.layout,
      'children': FigmaContainerDefinition.nodeToJson(instance.children),
    };
