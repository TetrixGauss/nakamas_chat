import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nakamas_chat/blocs/chat_bloc/chat_bloc.dart';
import 'package:nakamas_chat/models/message_model.dart';
import 'package:nakamas_chat/router/routes.dart';
import 'package:nakamas_chat/ui/ui_components/my_message.dart';
import 'package:nakamas_chat/ui/ui_components/received_message.dart';
import 'package:nakamas_chat/utils/constants/general.dart';
import 'package:nakamas_chat/utils/keys/asset_keys.dart';
import 'package:nakamas_chat/utils/status.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constants/style.dart';

class ChatScreen extends StatelessWidget {
  final String? convoID;
  final String peerID;

  const ChatScreen({Key? key, required this.convoID, required this.peerID})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    log("peerID");
    log(peerID);
    return BlocConsumer<ChatBloc, ChatState>(listener: (context, state) {
      if (state.chatStatus == ChatStatus.messageSent) {
        state.listScrollController.animateTo(0.0,
            duration: Duration(milliseconds: 300), curve: Curves.easeOut);
      } else if (state.chatStatus == ChatStatus.back) {
        Navigator.pushNamed(context, Routes.dashboardScreen);
      }
    }, builder: (context, state) {
      return WillPopScope(
        onWillPop: () async {
          BlocProvider.of<ChatBloc>(context).add(ChatEvent.back());
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            leading: TextButton(
              onPressed: () {
                BlocProvider.of<ChatBloc>(context).add(ChatEvent.back());
              },
              child: Icon(Icons.arrow_back),
            ),
          ),
          body: _mainBody(context, state),
        ),
      );
    });
  }

  _mainBody(BuildContext context, ChatState state) {
    return Column(
      children: <Widget>[
        messages(context, state),
        input(context, state),
      ],
    );
  }

  messages(BuildContext context, ChatState state) {
    log("state.messages.length.toString()");
    log(state.messages.length.toString());
    return Expanded(
        child: ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemBuilder: (BuildContext context, int index) =>
          buildMessage(index, state.messages[index], state),
      itemCount: state.messages.length,
      reverse: true,
      controller: state.listScrollController,
    ));
  }

  buildMessage(int index, Message message, ChatState state) {
    if (!message.read && message.idTo == peerID) {
      // Database.updateMessageRead(document, convoID);
    }

    if (message.idFrom == state.uId) {
      // Right (my message)
      return Row(
        children: [
          MyMessage(text: state.messages[index].content, function: () {})
        ],
        mainAxisAlignment: MainAxisAlignment.end,
      );
    } else {
      // Left (peer message)
      return Row(
        children: <Widget>[
          ReceivedMessage(text: message.content, function: () {})
        ],
        mainAxisAlignment: MainAxisAlignment.start,
      );
      ;
    }
  }

  input(BuildContext context, ChatState state) {
    return Container(
      width: General.screenSizeWidth * 0.9,
      // height: _screenSize.height * 0.07,
      decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: General.screenSizeWidth * 0.8,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: "Send message",
                fillColor: Style.secondaryColor,
                filled: true,
                border: InputBorder.none,
                counterText: "",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              cursorColor: Style.primaryAppColor,
              controller: state.textEditingController,
              onChanged: (value) {
                final val = TextSelection.collapsed(
                    offset: state.textEditingController.text.length);
                state.textEditingController.selection = val;
              },
              onSubmitted: (value) {},
              maxLines: null,
              style: const TextStyle(
                  fontSize: Style.textFontSize, color: Style.primaryTextColor),
            ),
          ),
          GestureDetector(
            onTap: () {
              log("textEditingController.text.toString()");
              log(state.textEditingController.text.toString());
              log(peerID.toString());
              BlocProvider.of<ChatBloc>(context).add(ChatEvent.sendMessage(
                  convoID,
                  peerID,
                  state.textEditingController.text.toString()));
              state.textEditingController.clear();
              // AppToast.showMessage("Send");
            },
            child: SvgPicture.asset(
              AssetKeys.sendButton,
              width: General.screenSizeWidth * 0.05,
              height: General.screenSizeWidth * 0.05,
              color: const Color(0xffA6A6A6),
            ),
          )
        ],
      ),
    );
  }
}
