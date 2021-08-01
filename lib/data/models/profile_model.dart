import 'package:json_annotation/json_annotation.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class Profile {
  final int id;
  final String name;
  final String email;
  final String photo;
  final String function;
  final int likes;
  final int followers;
  final int ingredients;
  final String imageUrl;

  Profile({
    required this.id,
    required this.name,
    required this.email,
    required this.photo,
    required this.function,
    required this.likes,
    required this.followers,
    required this.ingredients,
    required this.imageUrl,
  });

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
