// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      firestoreId: json['firestoreId'] as String,
      status: json['status'] as String,
      picture: json['picture'] as String,
      showPicture: json['showPicture'] as bool,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'firestoreId': instance.firestoreId,
      'status': instance.status,
      'picture': instance.picture,
      'showPicture': instance.showPicture,
    };
