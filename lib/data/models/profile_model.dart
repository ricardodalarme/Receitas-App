import 'dart:math';

import 'package:json_annotation/json_annotation.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class Profile {
  final String id;
  final String name;
  final String email;
  final String photo;
  final String function;
  final int likes;
  final int followers;
  final int saved;
  final int following;

  Profile({
    required this.id,
    required this.name,
    required this.email,
    required this.photo,
    required this.function,
    required this.likes,
    required this.followers,
    required this.saved,
    required this.following,
  });

  factory Profile.fromFacebook(Map<String, dynamic> json) {
    final rng = Random();

    return Profile(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      photo: json['picture']['data']['url'],
      function: 'Potato Master',
      likes: rng.nextInt(100),
      followers: rng.nextInt(100),
      saved: rng.nextInt(100),
      following: rng.nextInt(100),
    );
  }

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
