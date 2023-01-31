// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'figma_container_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FigmaContainerDefinition _$FigmaContainerDefinitionFromJson(
    Map<String, dynamic> json) {
  return _FigmaContainerDefinition.fromJson(json);
}

/// @nodoc
mixin _$FigmaContainerDefinition {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  FigmaAxis get axis => throw _privateConstructorUsedError;
  FigmaLayout get layout => throw _privateConstructorUsedError;
  @JsonKey(
      toJson: FigmaContainerDefinition.nodeToJson,
      fromJson: FigmaContainerDefinition.jsonToNode)
  List<FigmaNodeDefinition> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FigmaContainerDefinitionCopyWith<FigmaContainerDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FigmaContainerDefinitionCopyWith<$Res> {
  factory $FigmaContainerDefinitionCopyWith(FigmaContainerDefinition value,
          $Res Function(FigmaContainerDefinition) then) =
      _$FigmaContainerDefinitionCopyWithImpl<$Res, FigmaContainerDefinition>;
  @useResult
  $Res call(
      {String name,
      String id,
      String type,
      String description,
      double x,
      double y,
      double width,
      double height,
      FigmaAxis axis,
      FigmaLayout layout,
      @JsonKey(toJson: FigmaContainerDefinition.nodeToJson, fromJson: FigmaContainerDefinition.jsonToNode)
          List<FigmaNodeDefinition> children});

  $FigmaAxisCopyWith<$Res> get axis;
  $FigmaLayoutCopyWith<$Res> get layout;
}

/// @nodoc
class _$FigmaContainerDefinitionCopyWithImpl<$Res,
        $Val extends FigmaContainerDefinition>
    implements $FigmaContainerDefinitionCopyWith<$Res> {
  _$FigmaContainerDefinitionCopyWithImpl(this._value, this._then);

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
    Object? description = null,
    Object? x = null,
    Object? y = null,
    Object? width = null,
    Object? height = null,
    Object? axis = null,
    Object? layout = null,
    Object? children = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      axis: null == axis
          ? _value.axis
          : axis // ignore: cast_nullable_to_non_nullable
              as FigmaAxis,
      layout: null == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as FigmaLayout,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<FigmaNodeDefinition>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FigmaAxisCopyWith<$Res> get axis {
    return $FigmaAxisCopyWith<$Res>(_value.axis, (value) {
      return _then(_value.copyWith(axis: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FigmaLayoutCopyWith<$Res> get layout {
    return $FigmaLayoutCopyWith<$Res>(_value.layout, (value) {
      return _then(_value.copyWith(layout: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FigmaContainerDefinitionCopyWith<$Res>
    implements $FigmaContainerDefinitionCopyWith<$Res> {
  factory _$$_FigmaContainerDefinitionCopyWith(
          _$_FigmaContainerDefinition value,
          $Res Function(_$_FigmaContainerDefinition) then) =
      __$$_FigmaContainerDefinitionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String id,
      String type,
      String description,
      double x,
      double y,
      double width,
      double height,
      FigmaAxis axis,
      FigmaLayout layout,
      @JsonKey(toJson: FigmaContainerDefinition.nodeToJson, fromJson: FigmaContainerDefinition.jsonToNode)
          List<FigmaNodeDefinition> children});

  @override
  $FigmaAxisCopyWith<$Res> get axis;
  @override
  $FigmaLayoutCopyWith<$Res> get layout;
}

/// @nodoc
class __$$_FigmaContainerDefinitionCopyWithImpl<$Res>
    extends _$FigmaContainerDefinitionCopyWithImpl<$Res,
        _$_FigmaContainerDefinition>
    implements _$$_FigmaContainerDefinitionCopyWith<$Res> {
  __$$_FigmaContainerDefinitionCopyWithImpl(_$_FigmaContainerDefinition _value,
      $Res Function(_$_FigmaContainerDefinition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? type = null,
    Object? description = null,
    Object? x = null,
    Object? y = null,
    Object? width = null,
    Object? height = null,
    Object? axis = null,
    Object? layout = null,
    Object? children = null,
  }) {
    return _then(_$_FigmaContainerDefinition(
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      axis: null == axis
          ? _value.axis
          : axis // ignore: cast_nullable_to_non_nullable
              as FigmaAxis,
      layout: null == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as FigmaLayout,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<FigmaNodeDefinition>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FigmaContainerDefinition extends _FigmaContainerDefinition {
  const _$_FigmaContainerDefinition(
      {this.name = '',
      this.id = '',
      this.type = '',
      this.description = '',
      this.x = 0,
      this.y = 0,
      this.width = 0,
      this.height = 0,
      this.axis = const FigmaAxis(),
      this.layout = const FigmaLayout(),
      @JsonKey(toJson: FigmaContainerDefinition.nodeToJson, fromJson: FigmaContainerDefinition.jsonToNode)
          final List<FigmaNodeDefinition> children = const []})
      : _children = children,
        super._();

  factory _$_FigmaContainerDefinition.fromJson(Map<String, dynamic> json) =>
      _$$_FigmaContainerDefinitionFromJson(json);

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
  final String description;
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
  @JsonKey()
  final FigmaAxis axis;
  @override
  @JsonKey()
  final FigmaLayout layout;
  final List<FigmaNodeDefinition> _children;
  @override
  @JsonKey(
      toJson: FigmaContainerDefinition.nodeToJson,
      fromJson: FigmaContainerDefinition.jsonToNode)
  List<FigmaNodeDefinition> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'FigmaContainerDefinition(name: $name, id: $id, type: $type, description: $description, x: $x, y: $y, width: $width, height: $height, axis: $axis, layout: $layout, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FigmaContainerDefinition &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.axis, axis) || other.axis == axis) &&
            (identical(other.layout, layout) || other.layout == layout) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      id,
      type,
      description,
      x,
      y,
      width,
      height,
      axis,
      layout,
      const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FigmaContainerDefinitionCopyWith<_$_FigmaContainerDefinition>
      get copyWith => __$$_FigmaContainerDefinitionCopyWithImpl<
          _$_FigmaContainerDefinition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FigmaContainerDefinitionToJson(
      this,
    );
  }
}

abstract class _FigmaContainerDefinition extends FigmaContainerDefinition {
  const factory _FigmaContainerDefinition(
      {final String name,
      final String id,
      final String type,
      final String description,
      final double x,
      final double y,
      final double width,
      final double height,
      final FigmaAxis axis,
      final FigmaLayout layout,
      @JsonKey(toJson: FigmaContainerDefinition.nodeToJson, fromJson: FigmaContainerDefinition.jsonToNode)
          final List<FigmaNodeDefinition>
              children}) = _$_FigmaContainerDefinition;
  const _FigmaContainerDefinition._() : super._();

  factory _FigmaContainerDefinition.fromJson(Map<String, dynamic> json) =
      _$_FigmaContainerDefinition.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  String get type;
  @override
  String get description;
  @override
  double get x;
  @override
  double get y;
  @override
  double get width;
  @override
  double get height;
  @override
  FigmaAxis get axis;
  @override
  FigmaLayout get layout;
  @override
  @JsonKey(
      toJson: FigmaContainerDefinition.nodeToJson,
      fromJson: FigmaContainerDefinition.jsonToNode)
  List<FigmaNodeDefinition> get children;
  @override
  @JsonKey(ignore: true)
  _$$_FigmaContainerDefinitionCopyWith<_$_FigmaContainerDefinition>
      get copyWith => throw _privateConstructorUsedError;
}
