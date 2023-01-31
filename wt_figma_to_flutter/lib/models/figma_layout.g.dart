// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'figma_layout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FigmaLayout _$$_FigmaLayoutFromJson(Map<String, dynamic> json) =>
    _$_FigmaLayout(
      align: json['align'] as String? ?? '',
      grow: (json['grow'] as num?)?.toDouble() ?? 0,
      mode: json['mode'] as String? ?? '',
      positioning: json['positioning'] as String? ?? '',
      clipsContent: json['clipsContent'] as bool? ?? false,
      overflowDirection: json['overflowDirection'] as String? ?? '',
    );

Map<String, dynamic> _$$_FigmaLayoutToJson(_$_FigmaLayout instance) =>
    <String, dynamic>{
      'align': instance.align,
      'grow': instance.grow,
      'mode': instance.mode,
      'positioning': instance.positioning,
      'clipsContent': instance.clipsContent,
      'overflowDirection': instance.overflowDirection,
    };
