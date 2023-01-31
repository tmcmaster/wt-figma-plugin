import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wt_models/wt_models.dart';

part 'figma_axis_details.freezed.dart';
part 'figma_axis_details.g.dart';

@freezed
class FigmaAxisDetails with JsonSupport, _$FigmaAxisDetails {
  static final from = FromModelTo<FigmaAxisDetails>();

  const FigmaAxisDetails._();

  const factory FigmaAxisDetails({
    @Default('') String alignItems,
    @Default('') String sizingModes,
  }) = _FigmaAxisDetails;

  factory FigmaAxisDetails.fromJson(Map<String, Object?> json) => _$FigmaAxisDetailsFromJson(json);
}
