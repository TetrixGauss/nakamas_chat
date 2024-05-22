// import 'dart:convert';
// import 'dart:developer';
//
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:timezone/data/latest.dart' as tz;
//
// class FirebaseNotification {
//
//   // FirebaseNotification()
//
//   Future<void> initFirebase() async {
//
//     FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//
//     await FirebaseMessaging.instance
//         .setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );
//
//
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
//       log("message.toString()");
//       log(message.toString());
//       log(message.data.toString());
//       try{
//         log(message.notification!.body.toString());
//       } catch(e) {
//         log(e.toString());
//       }
//       log(message.sentTime.toString());
//
//       try{
//         if ((await _userRepository.getCount()) > 0) {
//         }
//       } catch (e) {
//         log(e.toString());
//       }
//     });
//
//
//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
//     });
//   }
//
//   Future<String> get getToken async {
//     String? token = await FirebaseMessaging.instance.getToken();
//     if (token == null) token = '';
//     return token;
//   }
//
// }
//
// @pragma('vm:entry-point')
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   try{
//     setupLocator();
//   } catch (e) {
//     log("_firebaseMessagingBackgroundHandler: $e");
//   }
//   await EasyLocalization.ensureInitialized();
//   tz.initializeTimeZones();
//   try{
//     if ((await _userRepository.getCount()) > 0) {
//     }
//   } catch (e) {
//     log(e.toString());
//   }
// }
//
