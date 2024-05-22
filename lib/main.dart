import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nakamas_chat/router/route_generator.dart';
import 'package:nakamas_chat/router/routes.dart';
import 'package:nakamas_chat/utils/app_theme.dart';
import 'package:nakamas_chat/utils/constants/general.dart';
import 'package:nakamas_chat/utils/device_info.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:timezone/data/latest.dart' as tz;

import 'dependency_injection/setup_locator.dart';


final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

String deviceID = "";
late SharedPreferences sharedPreferences;
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );
  setupLocator();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Permission.notification.isDenied.then((value) {
    if (value) {
      Permission.notification.request();
    }
  });
  await EasyLocalization.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();

  tz.initializeTimeZones();
  deviceID =  (await DeviceInfo.getInfo());
  log("deviceID");
  log(deviceID);

  runApp(EasyLocalization(
      supportedLocales: const [Locale("el", "GR"), Locale('en', 'US')],
      startLocale: const Locale("el", "GR"),
      fallbackLocale: const Locale("en", "US"),
      path: 'assets/translations',
      child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  addLang(BuildContext context) async {
    SharedPreferences.getInstance().then((instance) {
      if (instance.getBool("language") == null) {
        context.setLocale(const Locale('en', 'US'));
        instance.setString("lang", "en_US");
        instance.setBool("language", true);
      }
    } );
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      navigatorKey: navigatorKey,
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: appTheme(context),
      onGenerateRoute: RouteGenerator.geneRateRoute,
      initialRoute: Routes.splashScreen,
    );
  }
}
