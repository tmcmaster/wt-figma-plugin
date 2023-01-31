// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'figma_layout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FigmaLayout _$FigmaLayoutFromJson(Map<String, dynamic> json) {
  return _FigmaLayout.fromJson(json);
}

/// @nodoc
mixin _$FigmaLayout {
  String get align => throw _privateConstructorUsedError;
  double get grow => throw _privateConstructorUsedError;
  String get mode => throw _privateConstructorUsedError;
  String get positioning => throw _privateConstructorUsedError;
  bool get clipsContent => throw _privateConstructorUsedError;
  String get overflowDirection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FigmaLayoutCopyWith<FigmaLayout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FigmaLayoutCopyWith<$Res> {
  factory $FigmaLayoutCopyWith(
          FigmaLayout value, $Res Function(FigmaLayout) then) =
      _$FigmaLayoutCopyWithImpl<$Res, FigmaLayout>;
  @useResult
  $Res call(
      {String align,
      double grow,
      String mode,
      String positioning,
      bool clipsContent,
      String overflowDirection});
}

/// @nodoc
class _$FigmaLayoutCopyWithImpl<$Res, $Val extends FigmaLayout>
    implements $FigmaLayoutCopyWith<$Res> {
  _$FigmaLayoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? align = null,
    Object? grow = null,
    Object? mode = null,
    Object? positioning = null,
    Object? clipsContent = null,
    Object? overflowDirection = null,
  }) {
    return _then(_value.copyWith(
      align: null == align
          ? _value.align
          : align // ignore: cast_nullable_to_non_nullable
              as String,
      grow: null == grow
          ? _value.grow
          : grow // ignore: cast_nullable_to_non_nullable
              as double,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
      positioning: null == positioning
          ? _value.positioning
          : positioning // ignore: cast_nullable_to_non_nullable
              as String,
      clipsContent: null == clipsContent
          ? _value.clipsContent
          : clipsContent // ignore: cast_nullable_to_non_nullable
              as bool,
      overflowDirection: null == overflowDirection
          ? _value.overflowDirection
          : overflowDirection // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FigmaLayoutCopyWith<$Res>
    implements $FigmaLayoutCopyWith<$Res> {
  factory _$$_FigmaLayoutCopyWith(
          _$_FigmaLayout value, $Res Function(_$_FigmaLayout) then) =
      __$$_FigmaLayoutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String align,
      double grow,
      String mode,
      String positioning,
      bool clipsContent,
      String overflowDirection});
}

/// @nodoc
class __$$_FigmaLayoutCopyWithImpl<$Res>
    extends _$FigmaLayoutCopyWithImpl<$Res, _$_FigmaLayout>
    implements _$$_FigmaLayoutCopyWith<$Res> {
  __$$_FigmaLayoutCopyWithImpl(
      _$_FigmaLayout _value, $Res Function(_$_FigmaLayout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? align = null,
    Object? grow = null,
    Object? mode = null,
    Object? positioning = null,
    Object? clipsContent = null,
    Object? overflowDirection = null,
  }) {
    return _then(_$_FigmaLayout(
      align: null == align
          ? _value.align
          : align // ignore: cast_nullable_to_non_nullable
              as String,
      grow: null == grow
          ? _value.grow
          : grow // ignore: cast_nullable_to_non_nullable
              as double,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
      positioning: null == positioning
          ? _value.positioning
          : positioning // ignore: cast_nullable_to_non_nullable
              as String,
      clipsContent: null == clipsContent
          ? _value.clipsContent
          : clipsContent // ignore: cast_nullable_to_non_nullable
              as bool,
      overflowDirection: null == overflowDirection
          ? _value.overflowDirection
          : overflowDirection // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FigmaLayout extends _FigmaLayout {
  const _$_FigmaLayout(
      {this.align = '',
      this.grow = 0,
      this.mode = '',
      this.positioning = '',
      this.clipsContent = false,
      this.overflowDirection = ''})
      : super._();

  factory _$_FigmaLayout.fromJson(Map<String, dynamic> json) =>
      _$$_FigmaLayoutFromJson(json);

  @override
  @JsonKey()
  final String align;
  @override
  @JsonKey()
  final double grow;
  @override
  @JsonKey()
  final String mode;
  @override
  @JsonKey()
  final String positioning;
  @override
  @JsonKey()
  final bool clipsContent;
  @override
  @JsonKey()
  final String overflowDirection;

  @override
  String toString() {
    return 'FigmaLayout(align: $align, grow: $grow, mode: $mode, positioning: $positioning, clipsContent: $clipsContent, overflowDirection: $overflowDirection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FigmaLayout &&
            (identical(other.align, align) || other.align == align) &&
            (identical(other.grow, grow) || other.grow == grow) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.positioning, positioning) ||
                other.positioning == positioning) &&
            (identical(other.clipsContent, clipsContent) ||
                other.clipsContent == clipsContent) &&
            (identical(other.overflowDirection, overflowDirection) ||
                other.overflowDirection == overflowDirection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, align, grow, mode, positioning,
      clipsContent, overflowDirection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FigmaLayoutCopyWith<_$_FigmaLayout> get copyWith =>
      __$$_FigmaLayoutCopyWithImpl<_$_FigmaLayout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FigmaLayoutToJson(
      this,
    );
  }
}

abstract class _FigmaLayout extends FigmaLayout {
  const factory _FigmaLayout(
      {final String align,
      final double grow,
      final String mode,
      final String positioning,
      final bool clipsContent,
      final String overflowDirection}) = _$_FigmaLayout;
  const _FigmaLayout._() : super._();

  factory _FigmaLayout.fromJson(Map<String, dynamic> json) =
      _$_FigmaLayout.fromJson;

  @override
  String get align;
  @override
  double get grow;
  @override
  String get mode;
  @override
  String get positioning;
  @override
  bool get clipsContent;
  @override
  String get overflowDirection;
  @override
  @JsonKey(ignore: true)
  _$$_FigmaLayoutCopyWith<_$_FigmaLayout> get copyWith =>
      throw _privateConstructorUsedError;
}
