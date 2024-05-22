import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:nakamas_chat/repositories/firestore_repo.dart';
import 'package:nakamas_chat/repositories/user_repo.dart';
import 'package:nakamas_chat/utils/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nakamas_chat/repositories/user_repo.dart';

import '../../models/user_model.dart';

part 'profile_event.dart';

part 'profile_bloc.freezed.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  late final UserRepository _userRepository;
  late final FirestoreRepository _firestoreRepository;

  ProfileBloc(this._userRepository, this._firestoreRepository) : super(ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.when(
          changeStatus: (String status) async {
            User user = (await _userRepository.getUsers()).first;
            user = user.copyWith(status: status);
            await _userRepository.updateUser(user);
          },
          togglePicture: () {},
          deleteAccount: () {},
          logout: () async {
            await _userRepository.deleteAllEntries();
            emit(state.copyWith(profileStatus: ProfileStatus.loggedOut));
          },
          showProfile: () async {
            User user = (await _userRepository.getUsers()).first;
            emit(state.copyWith(
                profileStatus: ProfileStatus.showProfile, user: user));
          }, back: () {
        emit(state.copyWith(
            profileStatus: ProfileStatus.back));
      });
    });
  }
}
