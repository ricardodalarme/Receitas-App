// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recipe _$RecipeFromJson(Map<String, dynamic> json) {
  return Recipe(
    id: json['id'] as int,
    name: json['name'] as String,
    categoryId: json['categoryId'] as int,
    coverPhoto: json['coverPhoto'] as String,
    galleryPhotos: (json['galleryPhotos'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    ingredientsId:
        (json['ingredientsId'] as List<dynamic>).map((e) => e as int).toList(),
    howToCook:
        (json['howToCook'] as List<dynamic>).map((e) => e as String).toList(),
    servingTime: json['servingTime'] as int,
    nutritionFacts: (json['nutritionFacts'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$RecipeToJson(Recipe instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'categoryId': instance.categoryId,
      'coverPhoto': instance.coverPhoto,
      'galleryPhotos': instance.galleryPhotos,
      'ingredientsId': instance.ingredientsId,
      'howToCook': instance.howToCook,
      'servingTime': instance.servingTime,
      'nutritionFacts': instance.nutritionFacts,
      'tags': instance.tags,
    };
