import 'package:json_annotation/json_annotation.dart';

part 'recipe_model.g.dart';

@JsonSerializable()
class Recipe {
  final int? id;
  final String? name;
  final int? categoryId;
  final String? coverPhoto;
  final List<String>? galleryPhotos;
  final List<int>? ingredientsId;
  final List<String>? howToCook;
  final int? servingTime;
  final List<String>? nutritionFacts;
  final List<String>? tags;

  Recipe({
    this.id,
    this.name,
    this.categoryId,
    this.coverPhoto,
    this.galleryPhotos,
    this.ingredientsId,
    this.howToCook,
    this.servingTime,
    this.nutritionFacts,
    this.tags,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
  Map<String, dynamic> toJson() => _$RecipeToJson(this);
}
