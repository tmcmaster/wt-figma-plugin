// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'figma_axis.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FigmaAxis _$$_FigmaAxisFromJson(Map<String, dynamic> json) => _$_FigmaAxis(
      primary: json['primary'] == null
          ? const FigmaAxisDetails()
          : FigmaAxisDetails.fromJson(json['primary'] as Map<String, dynamic>),
      counter: json['counter'] == null
          ? const FigmaAxisDetails()
          : FigmaAxisDetails.fromJson(json['counter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FigmaAxisToJson(_$_FigmaAxis instance) =>
    <String, dynamic>{
      'primary': instance.primary,
      'counter': instance.counter,
    };
