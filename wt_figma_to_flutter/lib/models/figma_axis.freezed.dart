// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'figma_axis.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FigmaAxis _$FigmaAxisFromJson(Map<String, dynamic> json) {
  return _FigmaAxis.fromJson(json);
}

/// @nodoc
mixin _$FigmaAxis {
  FigmaAxisDetails get primary => throw _privateConstructorUsedError;
  FigmaAxisDetails get counter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FigmaAxisCopyWith<FigmaAxis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FigmaAxisCopyWith<$Res> {
  factory $FigmaAxisCopyWith(FigmaAxis value, $Res Function(FigmaAxis) then) =
      _$FigmaAxisCopyWithImpl<$Res, FigmaAxis>;
  @useResult
  $Res call({FigmaAxisDetails primary, FigmaAxisDetails counter});

  $FigmaAxisDetailsCopyWith<$Res> get primary;
  $FigmaAxisDetailsCopyWith<$Res> get counter;
}

/// @nodoc
class _$FigmaAxisCopyWithImpl<$Res, $Val extends FigmaAxis>
    implements $FigmaAxisCopyWith<$Res> {
  _$FigmaAxisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = null,
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as FigmaAxisDetails,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as FigmaAxisDetails,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FigmaAxisDetailsCopyWith<$Res> get primary {
    return $FigmaAxisDetailsCopyWith<$Res>(_value.primary, (value) {
      return _then(_value.copyWith(primary: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FigmaAxisDetailsCopyWith<$Res> get counter {
    return $FigmaAxisDetailsCopyWith<$Res>(_value.counter, (value) {
      return _then(_value.copyWith(counter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FigmaAxisCopyWith<$Res> implements $FigmaAxisCopyWith<$Res> {
  factory _$$_FigmaAxisCopyWith(
          _$_FigmaAxis value, $Res Function(_$_FigmaAxis) then) =
      __$$_FigmaAxisCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FigmaAxisDetails primary, FigmaAxisDetails counter});

  @override
  $FigmaAxisDetailsCopyWith<$Res> get primary;
  @override
  $FigmaAxisDetailsCopyWith<$Res> get counter;
}

/// @nodoc
class __$$_FigmaAxisCopyWithImpl<$Res>
    extends _$FigmaAxisCopyWithImpl<$Res, _$_FigmaAxis>
    implements _$$_FigmaAxisCopyWith<$Res> {
  __$$_FigmaAxisCopyWithImpl(
      _$_FigmaAxis _value, $Res Function(_$_FigmaAxis) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = null,
    Object? counter = null,
  }) {
    return _then(_$_FigmaAxis(
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as FigmaAxisDetails,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as FigmaAxisDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FigmaAxis extends _FigmaAxis {
  const _$_FigmaAxis(
      {this.primary = const FigmaAxisDetails(),
      this.counter = const FigmaAxisDetails()})
      : super._();

  factory _$_FigmaAxis.fromJson(Map<String, dynamic> json) =>
      _$$_FigmaAxisFromJson(json);

  @override
  @JsonKey()
  final FigmaAxisDetails primary;
  @override
  @JsonKey()
  final FigmaAxisDetails counter;

  @override
  String toString() {
    return 'FigmaAxis(primary: $primary, counter: $counter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FigmaAxis &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.counter, counter) || other.counter == counter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, primary, counter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FigmaAxisCopyWith<_$_FigmaAxis> get copyWith =>
      __$$_FigmaAxisCopyWithImpl<_$_FigmaAxis>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FigmaAxisToJson(
      this,
    );
  }
}

abstract class _FigmaAxis extends FigmaAxis {
  const factory _FigmaAxis(
      {final FigmaAxisDetails primary,
      final FigmaAxisDetails counter}) = _$_FigmaAxis;
  const _FigmaAxis._() : super._();

  factory _FigmaAxis.fromJson(Map<String, dynamic> json) =
      _$_FigmaAxis.fromJson;

  @override
  FigmaAxisDetails get primary;
  @override
  FigmaAxisDetails get counter;
  @override
  @JsonKey(ignore: true)
  _$$_FigmaAxisCopyWith<_$_FigmaAxis> get copyWith =>
      throw _privateConstructorUsedError;
}
