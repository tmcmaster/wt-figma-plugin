import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wt_models/wt_models.dart';

part 'figma_component_property.freezed.dart';
part 'figma_component_property.g.dart';

@freezed
class FigmaComponentProperty with JsonSupport, _$FigmaComponentProperty {
  static final from = FromModelTo<FigmaComponentProperty>();

  const FigmaComponentProperty._();

  const factory FigmaComponentProperty({
    @Default('') String type,
  }) = _FigmaComponentProperty;

  factory FigmaComponentProperty.fromJson(Map<String, Object?> json) =>
      _$FigmaComponentPropertyFromJson(json);
}
