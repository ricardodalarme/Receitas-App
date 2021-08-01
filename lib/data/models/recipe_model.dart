import 'package:json_annotation/json_annotation.dart';

part 'recipe_model.g.dart';

@JsonSerializable()
class Recipe {
  final int id;
  final String name;
  final int categoryId;
  final String coverPhoto;
  final List<String> galleryPhotos;
  final List<int> ingredientsId;
  final List<String> howToCook;
  final int servingTime;
  final List<String> nutritionFacts;
  final List<String> tags;

  Recipe({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.coverPhoto,
    required this.galleryPhotos,
    required this.ingredientsId,
    required this.howToCook,
    required this.servingTime,
    required this.nutritionFacts,
    required this.tags,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
  Map<String, dynamic> toJson() => _$RecipeToJson(this);
}
