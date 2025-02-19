import 'dart:developer';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfo{
  static Future<String> getInfo() async {
    String? info ;

      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      if (Platform.isAndroid) {
        AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        info = androidInfo.id;
      } else if (Platform.isIOS) {
        IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
        info = iosDeviceInfo.identifierForVendor;
      }
    return info??"171";
  }
}