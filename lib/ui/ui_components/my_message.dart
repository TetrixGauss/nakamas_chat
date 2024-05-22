import 'package:flutter/material.dart';
import 'package:nakamas_chat/utils/constants/style.dart';

class MyMessage extends StatelessWidget {
  final String text;
  final Function() function;
  const MyMessage({Key? key, required this.text, required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      //     () {
      //
      //   // if(failed) {
      //   //   BlocProvider.of<ChatBloc>(context).add(ChatEvent.sendMessage(message.message));
      //   // }
      // },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // failed ? Icon(CupertinoIcons.exclamationmark_circle_fill, color: Colors.redAccent,) : Container(),
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(bottom: 8),
              decoration: const BoxDecoration(
                  color: Style.myMessageColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30), bottomLeft: Radius.circular(30))
              ),
              child: Text(text, style: TextStyle(color: Style.secondaryTextColor),),
            ),
          ),
        ],
      ),
    );
  }
}
