abstract class FigmaNodeDefinition {
  Map<String, dynamic> toJson();
  String get name;
  String get id;
  String get type;
  double get x;
  double get y;
  double get width;
  double get height;
}
