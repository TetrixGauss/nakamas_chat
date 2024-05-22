import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nakamas_chat/helpers/google_sign_in_helper.dart';
import 'package:nakamas_chat/models/user_model.dart' as model;
import 'package:nakamas_chat/repositories/firestore_repo.dart';
import 'package:nakamas_chat/repositories/user_repo.dart';
import 'package:nakamas_chat/utils/conectivity_status.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/status.dart';

part 'log_in_event.dart';

part 'log_in_bloc.freezed.dart';

part 'log_in_state.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  late final UserRepository _userRepository;
  late final FirestoreRepository _firestoreRepository;

  LogInBloc(this._userRepository, this._firestoreRepository) : super(LogInState.initial()) {
    on<LogInEvent>((event, emit) async {
      await event.when(googleLoginEvent: () async {
        if (await ConnectivityStatus.isNetworkAvailable()) {
          UserCredential userCredential = await GoogleSignInHelper()
              .signInWithGoogle();
          if(userCredential.user != null){
            log("userCredential.user.toString()");
            log(userCredential.user.toString());
            model.User user = model.User.newUser();
            user = user.copyWith(
                name: userCredential.user!.displayName.toString(),
                email: userCredential.user!.email.toString());
            await _userRepository.storeUser(user);
            String fireStoreId = await _firestoreRepository.checkIfUserExists(userCredential.user!.email!);
            if(fireStoreId == "") {
              fireStoreId = await _firestoreRepository.addUser(user);
            }else {
              SharedPreferences _sp = await SharedPreferences.getInstance();
              await _sp.setString('firestoreId', fireStoreId);
            }
            await _userRepository.updateUser(
                user.copyWith(firestoreId: fireStoreId));
            emit(state.copyWith(loginStatus: LoginStatus.logInSuccessful));
          }else {
            emit(state.copyWith(loginStatus: LoginStatus.logInFailed, errorMessage: "No user with that gmail!"));

          }

        } else {
          emit(state.copyWith(loginStatus: LoginStatus.logInFailed, errorMessage: "Network Failure"));
        }
      }, back: () {  });
    });
  }
}
