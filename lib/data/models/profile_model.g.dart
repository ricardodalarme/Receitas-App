// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return Profile(
    id: json['id'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    photo: json['photo'] as String,
    function: json['function'] as String,
    likes: json['likes'] as int,
    followers: json['followers'] as int,
    saved: json['saved'] as int,
    following: json['following'] as int,
  );
}

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'photo': instance.photo,
      'function': instance.function,
      'likes': instance.likes,
      'followers': instance.followers,
      'saved': instance.saved,
      'following': instance.following,
    };
