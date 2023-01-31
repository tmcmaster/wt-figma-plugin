import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wt_figma_to_flutter/models/figma_axis_details.dart';
import 'package:wt_models/wt_models.dart';

part 'figma_axis.freezed.dart';
part 'figma_axis.g.dart';

@freezed
class FigmaAxis with JsonSupport, _$FigmaAxis {
  static final from = FromModelTo<FigmaAxis>();

  const FigmaAxis._();

  const factory FigmaAxis({
    @Default(FigmaAxisDetails()) FigmaAxisDetails primary,
    @Default(FigmaAxisDetails()) FigmaAxisDetails counter,
  }) = _FigmaAxis;

  factory FigmaAxis.fromJson(Map<String, Object?> json) => _$FigmaAxisFromJson(json);
}
