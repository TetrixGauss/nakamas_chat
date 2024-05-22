
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nakamas_chat/models/conversation_model.dart';
import 'package:nakamas_chat/models/user_model.dart';
import 'package:nakamas_chat/repositories/firestore_repo.dart';
import 'package:nakamas_chat/repositories/user_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/status.dart';

part 'dashboard_event.dart';

part 'dashboard_bloc.freezed.dart';

part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  late final UserRepository _userRepository;
  late final FirestoreRepository _firestoreRepository;

  DashboardBloc(this._userRepository, this._firestoreRepository)
      : super(DashboardState.initial()) {
    on<DashboardEvent>((event, emit) async {
      await event.when(
          showAllConverations: () async {
            SharedPreferences _sp = await SharedPreferences.getInstance();
            String userID = _sp.getString("firestoreId")!;
            await emit.forEach<List<User>>(
                _firestoreRepository.streamAllUsers(userID),
                onData: (List<User> users) {
                  return state.copyWith(
                      dashboardStatus: DashboardStatus.showConversations,
                      users: users
                  );
                });
          },
          addUser: () {},
          goToConvertation: (String peerID) async {
            SharedPreferences _sp = await SharedPreferences.getInstance();
            String userID = _sp.getString("firestoreId")!;
            log("GotoConve");
            log(peerID);

            Conversation conversation = await _firestoreRepository.getConversation(userID, peerID);
            log(conversation.toString());
            emit(state.copyWith(dashboardStatus: DashboardStatus.goToConversation, convoID: conversation.firestoreId, peerID: peerID));

          }, goToProfile: () {
        emit(state.copyWith(dashboardStatus: DashboardStatus.goToProfile));

      });
    });
  }
}
