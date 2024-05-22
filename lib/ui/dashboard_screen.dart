import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nakamas_chat/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:nakamas_chat/models/conversation_model.dart';
import 'package:nakamas_chat/models/screen_arguments_model.dart';
import 'package:nakamas_chat/models/user_model.dart';
import 'package:nakamas_chat/router/routes.dart';
import 'package:nakamas_chat/ui/ui_components/conversation_component.dart';
import 'package:nakamas_chat/ui/ui_components/user_component.dart';
import 'package:nakamas_chat/utils/constants/style.dart';
import 'package:nakamas_chat/utils/status.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DashboardBloc, DashboardState>(
        listener: (context, state) {
      if (state.dashboardStatus == DashboardStatus.goToConversation) {
        Navigator.pushReplacementNamed(context, Routes.chatScreen,
            arguments: ScreenArguments(state.convoID, state.peerID));
      } else if(state.dashboardStatus == DashboardStatus.goToProfile) {
        Navigator.pushReplacementNamed(context, Routes.profileScreen);
      }
    }, builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          leading: TextButton(
            onPressed: () {
              BlocProvider.of<DashboardBloc>(context)
                  .add(DashboardEvent.addUser());
            },
            child: Text(
              "ADD user",
              style: TextStyle(color: Colors.white),
            ),
          ),
          actions: [
            TextButton(onPressed: () {
              BlocProvider.of<DashboardBloc>(context)
                  .add(DashboardEvent.goToProfile());
            }, child: Icon(Icons.account_circle_sharp, color: Style.secondaryAppColor,))
          ],
        ),
        body: _mainBody(context, state),
      );
    });
  }

  _mainBody(BuildContext context, DashboardState state) {
    return ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemBuilder: (BuildContext context, int index) =>
          buildUserContainer(
              context, index, state.users[index]),
      itemCount: state.users.length,
      reverse: false,
      controller: state.listScrollController,
    );
  }

  buildUserContainer(
      BuildContext context, int index, User user) {
    return GestureDetector(
        onTap: () {
          BlocProvider.of<DashboardBloc>(context).add(
              DashboardEvent.goToConvertation(user.firestoreId));
        },
        child: UserComponent(
          status: "conversation.lastMessage['content']",
          userName: user.name,
        ));
  }
}
