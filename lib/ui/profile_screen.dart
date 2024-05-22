import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nakamas_chat/blocs/profile_bloc/profile_bloc.dart';
import 'package:nakamas_chat/router/routes.dart';
import 'package:nakamas_chat/utils/constants/style.dart';
import 'package:nakamas_chat/utils/status.dart';
import 'package:nakamas_chat/ui/ui_components/switch.dart' as chat;

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if(state.profileStatus == ProfileStatus.loggedOut) {
          Navigator.pushNamed(context, Routes.loginScreen);
        } else if(state.profileStatus == ProfileStatus.back) {
          Navigator.pushNamed(context, Routes.dashboardScreen);
        }
      },
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            BlocProvider.of<ProfileBloc>(context).add(ProfileEvent.back());
            return false;
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text("Profile"),
              leading: TextButton(onPressed: () {
                BlocProvider.of<ProfileBloc>(context).add(ProfileEvent.back());
              }, child: Icon(Icons.arrow_back, color: Style.secondaryColor,),

              ),
            ),
            body: _mainBody(context, state),
          ),
        );
      },
    );
  }
  _mainBody(BuildContext context, ProfileState state) {
    return Column(
      children: [
        chat.Switch(label: "Show Avatar", onChanged: () {}, status: ,)
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Color(0xff764abc),
            child: Icon(Icons.account_circle_sharp)
          ),
          title: Text("Show Avatar"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Color(0xff764abc),
            child: Icon(Icons.delete_forever)
          ),
          title: Text("Delete Account"),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        TextButton(onPressed: (){
          BlocProvider.of<ProfileBloc>(context).add(ProfileEvent.logout());
        }, child: Text("Logout"))

      ],
    );
  }
}
