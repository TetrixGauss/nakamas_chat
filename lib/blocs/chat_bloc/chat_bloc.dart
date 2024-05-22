import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nakamas_chat/helpers/firestore_helper.dart';
import 'package:nakamas_chat/helpers/google_sign_in_helper.dart';
import 'package:nakamas_chat/models/message_model.dart';
import 'package:nakamas_chat/models/user_model.dart' as model;
import 'package:nakamas_chat/repositories/firestore_repo.dart';
import 'package:nakamas_chat/repositories/user_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/status.dart';

part 'chat_event.dart';

part 'chat_bloc.freezed.dart';

part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  late final UserRepository _userRepository;
  late final FirestoreRepository _firestoreRepository;

  ChatBloc(this._userRepository, this._firestoreRepository)
      : super(ChatState.initial()) {
    on<ChatEvent>((event, emit) async {
      await event.when(
            sendMessage: (String? convoID, String peerID,  String message) async{
            SharedPreferences _sp = await SharedPreferences.getInstance();
            String userID = _sp.getString("firestoreId")!;
            convoID ??= FirestoreHelper().getConversationID(userID, peerID);
            _firestoreRepository.sendMessage(convoID, userID, peerID, message, DateTime.now());
            emit(state.copyWith(chatStatus: ChatStatus.messageSent));
          },
          back: () {
            emit(state.copyWith(chatStatus: ChatStatus.back));
          },
          showMessages: (String? convoId, String peerID) async {
            SharedPreferences _sp = await SharedPreferences.getInstance();
            String userID = _sp.getString("firestoreId")!;
            List<Message> messages = [];
            log("convoId!.toString()");
            log(convoId!.toString());
            if(convoId != null && convoId != "") {
              await emit.forEach<List<Message>>(
                  _firestoreRepository.streamMessagesForConversationDesc(convoId),
                  onData: (List<Message> messagesStream) {
                    messages.clear();
                    messages.addAll(messagesStream);
                    log("essages.length.toString()");
                    log(messages.length.toString());
                    return state.copyWith(
                        chatStatus: ChatStatus.showingMessages,
                        messages: messages,
                      uId: userID
                    );
                  });
            } else {
              emit(state.copyWith(
                  chatStatus: ChatStatus.showingMessages,
                  messages: messages
              ));
            }
          });
    });
  }
}
