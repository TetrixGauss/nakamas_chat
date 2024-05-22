import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';

part 'message_model.g.dart';

@freezed
class Message with _$Message {
  factory Message({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'convoID') required String convoID,
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'idFrom') required String idFrom,
    @JsonKey(name: 'idTo') required String idTo,
    @JsonKey(name: 'read') required bool read,
    @JsonKey(name: 'timestamp') required DateTime timestamp,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  factory Message.newMessage() {
    return Message(
        id: "",
        convoID: "",
        content: "",
        idFrom: "",
        idTo: "",
        read: false,
        timestamp: DateTime.now());
  }

  factory Message.fromFirestore(DocumentSnapshot snapshot, String convoID) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    return Message(
        id: snapshot.id,
        convoID: convoID,
        content: data["content"],
        idFrom: data["idFrom"],
        idTo: data["idTo"],
        read: data["read"],
        timestamp: DateTime.fromMillisecondsSinceEpoch(int.parse(data["timestamp"])));
  }

  factory Message.fromConvo(Map<String, dynamic> data, String convoID) {
    return Message(
        id: "",
        convoID: convoID,
        content: data["content"],
        idFrom: data["idFrom"],
        idTo: data["idTo"],
        read: data["read"],
        timestamp: DateTime.fromMillisecondsSinceEpoch(int.parse(data["timestamp"])));
  }
}
