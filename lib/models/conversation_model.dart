import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nakamas_chat/dependency_injection/services/repositories_service.dart';
import 'package:nakamas_chat/models/message_model.dart';

import '../dependency_injection/setup_locator.dart';

part 'conversation_model.freezed.dart';
part 'conversation_model.g.dart';

@freezed
class Conversation with _$Conversation {
  factory Conversation({
    @JsonKey(name: 'lastMessage') required Map<dynamic, dynamic> lastMessage,
    @JsonKey(name: 'users') required List<dynamic> users,
    @JsonKey(name: 'firestoreId') required String firestoreId,
    required String interlocutor,
    required String interlocutorId,
  }) = _Conversation;

  factory Conversation.fromJson(Map<String, dynamic> json) => _$ConversationFromJson(json);

  factory Conversation.newConversation() {
    return Conversation(
        lastMessage: {},
        users: [],
        firestoreId: "",
        interlocutor: "",
        interlocutorId: "");
  }

  factory Conversation.fromFirestore2(DocumentSnapshot queryDocumentSnapshot) {
    if(queryDocumentSnapshot != null) {
      Map<String, dynamic> data = queryDocumentSnapshot.data() as Map<String, dynamic>;
      log("data.toString()");
      log(data.toString());
      return Conversation(
          lastMessage: data['lastMessage'] ?? {},
          users: data['users'] ?? [],
          firestoreId: queryDocumentSnapshot.id,
          interlocutor: "",
          interlocutorId: ""
      );
    } else {
      return Conversation.newConversation();
    }

  }

  factory Conversation.fromFirestore(DocumentSnapshot documentSnapshot, String userID) {
    log("documentSnapshot.data().toString()");
    log(documentSnapshot.data().toString());
    String interlocutorId = "";
    String interlocutor = "";
    Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
    int index = data['users'].indexOf(userID);
    log(index.toString());
    if(index == 0) {
      interlocutorId = data['users'][1];
    }else {
      interlocutorId = data['users'][0];
    }
    getIt<RepositoriesService>().firestoreRepository.getUser(interlocutorId).then((value) {
      interlocutor = value;
      return null;
    });
    return Conversation(
        lastMessage: data['lastMessage'] ?? <dynamic>{},
        users: data['users'] ?? <dynamic>[],
        firestoreId: documentSnapshot.id,
        interlocutor: interlocutor,
        interlocutorId:interlocutorId
    );
  }
}