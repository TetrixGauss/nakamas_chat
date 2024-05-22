import 'package:flutter/material.dart';
import 'package:nakamas_chat/utils/constants/general.dart';
import 'package:nakamas_chat/utils/constants/style.dart';

class ReceivedMessage extends StatelessWidget {
  final String text;
  final Function() function;
  const ReceivedMessage({Key? key, required this.text, required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: General.screenSizeWidth * 0.08,
          height: General.screenSizeWidth * 0.08,
          decoration: const BoxDecoration(
              shape: BoxShape.circle
          ),
          // child: SvgPicture.asset(
          //   "assets/svg/vassal-logo.svg",
          //   width: _screenSize.width * 0.08,
          //   height: _screenSize.width * 0.08,
          //   // color: Color(0xff211E1E),
          // ),
        ),
        SizedBox(width: General.screenSizeWidth * 0.01,),
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(bottom: 8),
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Style.receivedMessageColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30), bottomRight: Radius.circular(30))
            ),
            child: Text(text, style: TextStyle(color: Style.secondaryTextColor),),
          ),
        ),
      ],
    );
  }
}
