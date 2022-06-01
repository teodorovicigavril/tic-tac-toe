// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUser$ _$$AppUser$FromJson(Map<String, dynamic> json) => _$AppUser$(
      uid: json['uid'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      photoUrl: json['photoUrl'] as String,
    );

Map<String, dynamic> _$$AppUser$ToJson(_$AppUser$ instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'username': instance.username,
      'photoUrl': instance.photoUrl,
    };

_$Score$ _$$Score$FromJson(Map<String, dynamic> json) => _$Score$(
      id: json['id'] as String,
      uid: json['uid'] as String,
      difficulty: json['difficulty'] as int,
      score: json['score'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$Score$ToJson(_$Score$ instance) => <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'difficulty': instance.difficulty,
      'score': instance.score,
      'createdAt': instance.createdAt.toIso8601String(),
    };
