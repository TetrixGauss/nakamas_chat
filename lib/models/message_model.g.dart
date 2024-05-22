// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      id: json['id'] as String,
      convoID: json['convoID'] as String,
      content: json['content'] as String,
      idFrom: json['idFrom'] as String,
      idTo: json['idTo'] as String,
      read: json['read'] as bool,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'convoID': instance.convoID,
      'content': instance.content,
      'idFrom': instance.idFrom,
      'idTo': instance.idTo,
      'read': instance.read,
      'timestamp': instance.timestamp.toIso8601String(),
    };
