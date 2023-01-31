import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wt_models/wt_models.dart';

part 'figma_layout.freezed.dart';
part 'figma_layout.g.dart';

@freezed
class FigmaLayout with JsonSupport, _$FigmaLayout {
  static final from = FromModelTo<FigmaLayout>();

  const FigmaLayout._();

  const factory FigmaLayout({
    @Default('') String align,
    @Default(0) double grow,
    @Default('') String mode,
    @Default('') String positioning,
    @Default(false) bool clipsContent,
    @Default('') String overflowDirection,
  }) = _FigmaLayout;

  factory FigmaLayout.fromJson(Map<String, Object?> json) => _$FigmaLayoutFromJson(json);
}
