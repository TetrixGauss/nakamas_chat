
import 'package:nakamas_chat/utils/constants/style.dart';
import 'package:flutter/material.dart';

import 'constants/style.dart';

ThemeData appTheme([ BuildContext? context]) {
  return ThemeData(
    primaryColor: Style.primaryAppColor,
    colorScheme: const ColorScheme.light(primary: Style.primaryAppColor),
    // primarySwatch: Style.primaryColor,
    textTheme: Theme.of(context!).textTheme.apply(
      fontFamily: 'Gothic',
    ),
  );
}