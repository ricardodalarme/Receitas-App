import 'package:json_annotation/json_annotation.dart';

part 'ingredient_model.g.dart';

@JsonSerializable()
class Ingredient {
  final int id;
  final String name;
  final String photo;

  Ingredient({
    required this.id,
    required this.photo,
    required this.name,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
  Map<String, dynamic> toJson() => _$IngredientToJson(this);
}
