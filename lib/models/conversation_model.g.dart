// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Conversation _$$_ConversationFromJson(Map<String, dynamic> json) =>
    _$_Conversation(
      lastMessage: json['lastMessage'] as Map<String, dynamic>,
      users: json['users'] as List<dynamic>,
      firestoreId: json['firestoreId'] as String,
      interlocutor: json['interlocutor'] as String,
      interlocutorId: json['interlocutorId'] as String,
    );

Map<String, dynamic> _$$_ConversationToJson(_$_Conversation instance) =>
    <String, dynamic>{
      'lastMessage': instance.lastMessage,
      'users': instance.users,
      'firestoreId': instance.firestoreId,
      'interlocutor': instance.interlocutor,
      'interlocutorId': instance.interlocutorId,
    };
