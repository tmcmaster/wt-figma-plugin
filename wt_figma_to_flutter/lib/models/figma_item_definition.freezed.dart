// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'figma_item_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FigmaItemDefinition _$FigmaItemDefinitionFromJson(Map<String, dynamic> json) {
  return _FigmaItemDefinition.fromJson(json);
}

/// @nodoc
mixin _$FigmaItemDefinition {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FigmaItemDefinitionCopyWith<FigmaItemDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FigmaItemDefinitionCopyWith<$Res> {
  factory $FigmaItemDefinitionCopyWith(
          FigmaItemDefinition value, $Res Function(FigmaItemDefinition) then) =
      _$FigmaItemDefinitionCopyWithImpl<$Res, FigmaItemDefinition>;
  @useResult
  $Res call(
      {String name,
      String id,
      String type,
      double x,
      double y,
      double width,
      double height});
}

/// @nodoc
class _$FigmaItemDefinitionCopyWithImpl<$Res, $Val extends FigmaItemDefinition>
    implements $FigmaItemDefinitionCopyWith<$Res> {
  _$FigmaItemDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? type = null,
    Object? x = null,
    Object? y = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FigmaItemDefinitionCopyWith<$Res>
    implements $FigmaItemDefinitionCopyWith<$Res> {
  factory _$$_FigmaItemDefinitionCopyWith(_$_FigmaItemDefinition value,
          $Res Function(_$_FigmaItemDefinition) then) =
      __$$_FigmaItemDefinitionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String id,
      String type,
      double x,
      double y,
      double width,
      double height});
}

/// @nodoc
class __$$_FigmaItemDefinitionCopyWithImpl<$Res>
    extends _$FigmaItemDefinitionCopyWithImpl<$Res, _$_FigmaItemDefinition>
    implements _$$_FigmaItemDefinitionCopyWith<$Res> {
  __$$_FigmaItemDefinitionCopyWithImpl(_$_FigmaItemDefinition _value,
      $Res Function(_$_FigmaItemDefinition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? type = null,
    Object? x = null,
    Object? y = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$_FigmaItemDefinition(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FigmaItemDefinition extends _FigmaItemDefinition {
  const _$_FigmaItemDefinition(
      {this.name = '',
      this.id = '',
      this.type = '',
      this.x = 0.0,
      this.y = 0.0,
      this.width = 0.0,
      this.height = 0.0})
      : super._();

  factory _$_FigmaItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$$_FigmaItemDefinitionFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final double x;
  @override
  @JsonKey()
  final double y;
  @override
  @JsonKey()
  final double width;
  @override
  @JsonKey()
  final double height;

  @override
  String toString() {
    return 'FigmaItemDefinition(name: $name, id: $id, type: $type, x: $x, y: $y, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FigmaItemDefinition &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, id, type, x, y, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FigmaItemDefinitionCopyWith<_$_FigmaItemDefinition> get copyWith =>
      __$$_FigmaItemDefinitionCopyWithImpl<_$_FigmaItemDefinition>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FigmaItemDefinitionToJson(
      this,
    );
  }
}

abstract class _FigmaItemDefinition extends FigmaItemDefinition {
  const factory _FigmaItemDefinition(
      {final String name,
      final String id,
      final String type,
      final double x,
      final double y,
      final double width,
      final double height}) = _$_FigmaItemDefinition;
  const _FigmaItemDefinition._() : super._();

  factory _FigmaItemDefinition.fromJson(Map<String, dynamic> json) =
      _$_FigmaItemDefinition.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  String get type;
  @override
  double get x;
  @override
  double get y;
  @override
  double get width;
  @override
  double get height;
  @override
  @JsonKey(ignore: true)
  _$$_FigmaItemDefinitionCopyWith<_$_FigmaItemDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}
