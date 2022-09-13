// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      email: json['email'] as String,
      uid: json['uid'] as String,
      photoUrl: json['photoUrl'] as String,
      username: json['username'] as String,
      bio: json['bio'] as String,
      followers: json['followers'] as List<dynamic>,
      following: json['following'] as List<dynamic>,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'email': instance.email,
      'uid': instance.uid,
      'photoUrl': instance.photoUrl,
      'username': instance.username,
      'bio': instance.bio,
      'followers': instance.followers,
      'following': instance.following,
    };
