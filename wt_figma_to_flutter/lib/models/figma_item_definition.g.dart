// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'figma_item_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FigmaItemDefinition _$$_FigmaItemDefinitionFromJson(
        Map<String, dynamic> json) =>
    _$_FigmaItemDefinition(
      name: json['name'] as String? ?? '',
      id: json['id'] as String? ?? '',
      type: json['type'] as String? ?? '',
      x: (json['x'] as num?)?.toDouble() ?? 0.0,
      y: (json['y'] as num?)?.toDouble() ?? 0.0,
      width: (json['width'] as num?)?.toDouble() ?? 0.0,
      height: (json['height'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_FigmaItemDefinitionToJson(
        _$_FigmaItemDefinition instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'type': instance.type,
      'x': instance.x,
      'y': instance.y,
      'width': instance.width,
      'height': instance.height,
    };
