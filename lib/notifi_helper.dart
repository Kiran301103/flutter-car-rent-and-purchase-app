import 'dart:developer';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class NotifiHelper {
  NotifiHelper._();
  static Future<void> initNotifi() async {
    await OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

    await OneSignal.shared.setAppId("7e308b26-19e2-4734-99e5-e7ab95baa763");

    await OneSignal.shared
    .promptUserForPushNotificationPermission()
    .then((PushNotificationPermission){
      log("Permission Accepted $PushNotificationPermission");
    });
  }
}
