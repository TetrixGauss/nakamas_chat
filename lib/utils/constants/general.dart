import 'package:easy_localization/easy_localization.dart';

import '../keys/locale_keys.dart';

class General {
  static const String channelId = "NAKAMASCHAT";
  static const String channelName = "Notifications";
  static const String channelDescription =
      "Default notification channel for the Nakamas Chat";
  static const String channelGroupKey = 'com.tetrix.nakamas_chat';


  List<String> languages = [LocaleKeys.english, LocaleKeys.greek];

  static late double screenSizeHeight;
  static late double screenSizeWidth;

}