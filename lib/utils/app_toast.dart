import 'package:fluttertoast/fluttertoast.dart';

import 'constants/style.dart';

class AppToast {
  AppToast();

  static showMessage(message,
      {length = Toast.LENGTH_SHORT,
      gravity = ToastGravity.BOTTOM,
      backgroundColor = Style.appToastBackgroundColor,
      textColor = Style.appToastTextColor,
      fontSize = 16.0}) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: length,
        gravity: gravity,
        backgroundColor: backgroundColor,
        textColor: textColor,
        fontSize: fontSize);
  }
}
