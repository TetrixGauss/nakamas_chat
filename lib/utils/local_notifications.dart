import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import '../main.dart';
import '../router/routes.dart';
import 'constants/general.dart';
import 'constants/style.dart';



class LocalNotifications {
  FlutterLocalNotificationsPlugin _flp = new FlutterLocalNotificationsPlugin();

  FlutterLocalNotificationsPlugin get flp => _flp;

  LocalNotifications._() {
    init();
  }

  Future<void> init() async {
    var android = AndroidInitializationSettings("");
    var ios = DarwinInitializationSettings(
        onDidReceiveLocalNotification: onDidReceiveLocalNotification);
    var platform = InitializationSettings(android: android, iOS: ios); //
    await _flp.initialize(platform); //, onDidReceiveNotificationResponse: onSelectNotification);
  }

  Future<void> onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) async {
    await showDialog(
      context: navigatorKey.currentContext!,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(title!),
        content: Text(body!),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            child: Text('Ok'),
            onPressed: () async {},
          )
        ],
      ),
    );
  }


  Future<void> onSelectNotification(String? payload) async {
    // BuildContext context =  navigatorKey.currentState.context;

    if (payload != null && payload != '' ) {

      if(payload == "alert") {
        // navigatorKey.currentState?.pushReplacementNamed(Routes.dashboardScreen);
      }

    }
  }

  int generateID() {
    final _random = new Random();
    int min = 1;
    num max = pow(2, 16);
    /**
     * Generates a positive random integer uniformly distributed on the range
     * from [min], inclusive, to [max], exclusive.
     */
    return (min + _random.nextInt(max.toInt() - min));
  }

  showNotification(String title, String description, String payload, String bandColor) async {
    bandColor = bandColor.toLowerCase();
    int id = generateID();
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      General.channelId,
      General.channelName,
      channelDescription: General.channelDescription,
      importance: Importance.max,
      priority: Priority.high,
      // sound: RawResourceAndroidNotificationSound('tibetan_bowl'),
      largeIcon: DrawableResourceAndroidBitmap('c$bandColor'),
      // icon: 'mipmap/imon_logo_green',

      color:  Style.primaryAppColor,
      groupKey: General.channelGroupKey,
      setAsGroupSummary: true,
      ticker: 'ticker',
      styleInformation: BigTextStyleInformation(description),
    );
    var iOSPlatformChannelSpecifics = const DarwinNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics,
    );
    // await _flp.show(id, title, description, platformChannelSpecifics,
    //     payload: payload);
    await _flp.zonedSchedule(
        id,
        title,
        description,
        tz.TZDateTime.from(DateTime.now().add(const Duration(seconds: 1)), tz.getLocation("Europe/Athens")),
        platformChannelSpecifics,
        uiLocalNotificationDateInterpretation:
        UILocalNotificationDateInterpretation.absoluteTime,
        androidAllowWhileIdle: true,
        payload: payload);
     // await _flp.zonedSchedule(id, title, description, platformChannelSpecifics,
     //    payload: payload, uiLocalNotificationDateInterpretation: null);
  }
}

LocalNotifications localNotifications = LocalNotifications._();