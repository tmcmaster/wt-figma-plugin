// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'figma_axis_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FigmaAxisDetails _$FigmaAxisDetailsFromJson(Map<String, dynamic> json) {
  return _FigmaAxisDetails.fromJson(json);
}

/// @nodoc
mixin _$FigmaAxisDetails {
  String get alignItems => throw _privateConstructorUsedError;
  String get sizingModes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FigmaAxisDetailsCopyWith<FigmaAxisDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FigmaAxisDetailsCopyWith<$Res> {
  factory $FigmaAxisDetailsCopyWith(
          FigmaAxisDetails value, $Res Function(FigmaAxisDetails) then) =
      _$FigmaAxisDetailsCopyWithImpl<$Res, FigmaAxisDetails>;
  @useResult
  $Res call({String alignItems, String sizingModes});
}

/// @nodoc
class _$FigmaAxisDetailsCopyWithImpl<$Res, $Val extends FigmaAxisDetails>
    implements $FigmaAxisDetailsCopyWith<$Res> {
  _$FigmaAxisDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alignItems = null,
    Object? sizingModes = null,
  }) {
    return _then(_value.copyWith(
      alignItems: null == alignItems
          ? _value.alignItems
          : alignItems // ignore: cast_nullable_to_non_nullable
              as String,
      sizingModes: null == sizingModes
          ? _value.sizingModes
          : sizingModes // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FigmaAxisDetailsCopyWith<$Res>
    implements $FigmaAxisDetailsCopyWith<$Res> {
  factory _$$_FigmaAxisDetailsCopyWith(
          _$_FigmaAxisDetails value, $Res Function(_$_FigmaAxisDetails) then) =
      __$$_FigmaAxisDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String alignItems, String sizingModes});
}

/// @nodoc
class __$$_FigmaAxisDetailsCopyWithImpl<$Res>
    extends _$FigmaAxisDetailsCopyWithImpl<$Res, _$_FigmaAxisDetails>
    implements _$$_FigmaAxisDetailsCopyWith<$Res> {
  __$$_FigmaAxisDetailsCopyWithImpl(
      _$_FigmaAxisDetails _value, $Res Function(_$_FigmaAxisDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alignItems = null,
    Object? sizingModes = null,
  }) {
    return _then(_$_FigmaAxisDetails(
      alignItems: null == alignItems
          ? _value.alignItems
          : alignItems // ignore: cast_nullable_to_non_nullable
              as String,
      sizingModes: null == sizingModes
          ? _value.sizingModes
          : sizingModes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FigmaAxisDetails extends _FigmaAxisDetails {
  const _$_FigmaAxisDetails({this.alignItems = '', this.sizingModes = ''})
      : super._();

  factory _$_FigmaAxisDetails.fromJson(Map<String, dynamic> json) =>
      _$$_FigmaAxisDetailsFromJson(json);

  @override
  @JsonKey()
  final String alignItems;
  @override
  @JsonKey()
  final String sizingModes;

  @override
  String toString() {
    return 'FigmaAxisDetails(alignItems: $alignItems, sizingModes: $sizingModes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FigmaAxisDetails &&
            (identical(other.alignItems, alignItems) ||
                other.alignItems == alignItems) &&
            (identical(other.sizingModes, sizingModes) ||
                other.sizingModes == sizingModes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, alignItems, sizingModes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FigmaAxisDetailsCopyWith<_$_FigmaAxisDetails> get copyWith =>
      __$$_FigmaAxisDetailsCopyWithImpl<_$_FigmaAxisDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FigmaAxisDetailsToJson(
      this,
    );
  }
}

abstract class _FigmaAxisDetails extends FigmaAxisDetails {
  const factory _FigmaAxisDetails(
      {final String alignItems,
      final String sizingModes}) = _$_FigmaAxisDetails;
  const _FigmaAxisDetails._() : super._();

  factory _FigmaAxisDetails.fromJson(Map<String, dynamic> json) =
      _$_FigmaAxisDetails.fromJson;

  @override
  String get alignItems;
  @override
  String get sizingModes;
  @override
  @JsonKey(ignore: true)
  _$$_FigmaAxisDetailsCopyWith<_$_FigmaAxisDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
