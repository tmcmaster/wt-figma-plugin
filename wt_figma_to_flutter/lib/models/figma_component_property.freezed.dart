// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'figma_component_property.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FigmaComponentProperty _$FigmaComponentPropertyFromJson(
    Map<String, dynamic> json) {
  return _FigmaComponentProperty.fromJson(json);
}

/// @nodoc
mixin _$FigmaComponentProperty {
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FigmaComponentPropertyCopyWith<FigmaComponentProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FigmaComponentPropertyCopyWith<$Res> {
  factory $FigmaComponentPropertyCopyWith(FigmaComponentProperty value,
          $Res Function(FigmaComponentProperty) then) =
      _$FigmaComponentPropertyCopyWithImpl<$Res, FigmaComponentProperty>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class _$FigmaComponentPropertyCopyWithImpl<$Res,
        $Val extends FigmaComponentProperty>
    implements $FigmaComponentPropertyCopyWith<$Res> {
  _$FigmaComponentPropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FigmaComponentPropertyCopyWith<$Res>
    implements $FigmaComponentPropertyCopyWith<$Res> {
  factory _$$_FigmaComponentPropertyCopyWith(_$_FigmaComponentProperty value,
          $Res Function(_$_FigmaComponentProperty) then) =
      __$$_FigmaComponentPropertyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$_FigmaComponentPropertyCopyWithImpl<$Res>
    extends _$FigmaComponentPropertyCopyWithImpl<$Res,
        _$_FigmaComponentProperty>
    implements _$$_FigmaComponentPropertyCopyWith<$Res> {
  __$$_FigmaComponentPropertyCopyWithImpl(_$_FigmaComponentProperty _value,
      $Res Function(_$_FigmaComponentProperty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_FigmaComponentProperty(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FigmaComponentProperty extends _FigmaComponentProperty {
  const _$_FigmaComponentProperty({this.type = ''}) : super._();

  factory _$_FigmaComponentProperty.fromJson(Map<String, dynamic> json) =>
      _$$_FigmaComponentPropertyFromJson(json);

  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'FigmaComponentProperty(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FigmaComponentProperty &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FigmaComponentPropertyCopyWith<_$_FigmaComponentProperty> get copyWith =>
      __$$_FigmaComponentPropertyCopyWithImpl<_$_FigmaComponentProperty>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FigmaComponentPropertyToJson(
      this,
    );
  }
}

abstract class _FigmaComponentProperty extends FigmaComponentProperty {
  const factory _FigmaComponentProperty({final String type}) =
      _$_FigmaComponentProperty;
  const _FigmaComponentProperty._() : super._();

  factory _FigmaComponentProperty.fromJson(Map<String, dynamic> json) =
      _$_FigmaComponentProperty.fromJson;

  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_FigmaComponentPropertyCopyWith<_$_FigmaComponentProperty> get copyWith =>
      throw _privateConstructorUsedError;
}
