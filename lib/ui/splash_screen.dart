import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nakamas_chat/blocs/splash_bloc/splash_bloc.dart';
import 'package:nakamas_chat/router/routes.dart';
import 'package:nakamas_chat/utils/constants/general.dart';
import 'package:nakamas_chat/utils/status.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    General.screenSizeHeight = MediaQuery.of(context).size.height;
    General.screenSizeWidth = MediaQuery.of(context).size.width;
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state.splashStatus == SplashStatus.logIn) {
          Navigator.pushNamedAndRemoveUntil(context, Routes.loginScreen, (route) => false);
        } else if (state.splashStatus == SplashStatus.dashboard) {
          Navigator.pushNamedAndRemoveUntil(context, Routes.dashboardScreen, (route) => false);
        }
      },
      child: const Center(
        child: Text("Nakamas", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      )
      );
  }
}
