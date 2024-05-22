import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:nakamas_chat/blocs/log_in_bloc/log_in_bloc.dart';
import 'package:nakamas_chat/main.dart';
import 'package:nakamas_chat/router/routes.dart';
import 'package:nakamas_chat/utils/app_toast.dart';
import 'package:nakamas_chat/utils/status.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogInBloc, LogInState>(
      listener: (context, state) {
        if(state.loginStatus == LoginStatus.logInSuccessful) {
          log("here");
          Navigator.pushNamed(context, Routes.dashboardScreen);
        } else if(state.loginStatus == LoginStatus.logInFailed) {
          AppToast.showMessage(state.errorMessage.tr());
        }
      },
      builder: (context, state) {
        return Center(
          child: TextButton(onPressed: () {
            BlocProvider.of<LogInBloc>(context).add(LogInEvent.googleLoginEvent());
          }, child: Text("Google Sign in", style: TextStyle(color: Colors.white),)),
        );
      },
    );
  }
}
