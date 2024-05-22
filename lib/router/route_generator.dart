
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nakamas_chat/blocs/chat_bloc/chat_bloc.dart';
import 'package:nakamas_chat/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:nakamas_chat/blocs/log_in_bloc/log_in_bloc.dart';
import 'package:nakamas_chat/blocs/profile_bloc/profile_bloc.dart';
import 'package:nakamas_chat/blocs/splash_bloc/splash_bloc.dart';
import 'package:nakamas_chat/dependency_injection/services/repositories_service.dart';
import 'package:nakamas_chat/dependency_injection/setup_locator.dart';
import 'package:nakamas_chat/models/screen_arguments_model.dart';
import 'package:nakamas_chat/router/routes.dart';
import 'package:nakamas_chat/ui/chat_screen.dart';
import 'package:nakamas_chat/ui/dashboard_screen.dart';
import 'package:nakamas_chat/ui/login_screen.dart';
import 'package:nakamas_chat/ui/profile_screen.dart';
import 'package:nakamas_chat/ui/splash_screen.dart';


class RouteGenerator {
  static Route<dynamic>? geneRateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<LogInBloc>(
            create: (context) =>
                LogInBloc(getIt<RepositoriesService>().userRepository, getIt<RepositoriesService>().firestoreRepository),
            child: LoginScreen(),
          ),
        );
      case Routes.dashboardScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<DashboardBloc>(
            create: (context) =>
                DashboardBloc(getIt<RepositoriesService>().userRepository, getIt<RepositoriesService>().firestoreRepository).. add(DashboardEvent.showAllConverations()),
            child: DashboardScreen(),
          ),
        );

      case Routes.chatScreen:
        var args = settings.arguments as ScreenArguments;
        return MaterialPageRoute(
          builder: (_) => BlocProvider<ChatBloc>(
            create: (context) =>
                ChatBloc(getIt<RepositoriesService>().userRepository, getIt<RepositoriesService>().firestoreRepository)..add(ChatEvent.showMessages(args.convoId!, args.peerId!)),
            child: ChatScreen(convoID: args.convoId!, peerID: args.peerId!,),
          ),
        );

      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<ProfileBloc>(
            create: (context) =>
            ProfileBloc(getIt<RepositoriesService>().userRepository, getIt<RepositoriesService>().firestoreRepository)..add(ProfileEvent.showProfile()),
            child: ProfileScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<SplashBloc>(
            create: (context) => SplashBloc(getIt<RepositoriesService>().userRepository)..add(SplashEvent.checkLoggedIn()),
            child: SplashScreen(),
          ),
        );
    }
  }
}
