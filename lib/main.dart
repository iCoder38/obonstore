import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:obonstore/controllers/classes/splash/splash.dart';

import 'firebase_options.dart';

RemoteMessage? initialMessage;
FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

void main() async {
  //
  WidgetsFlutterBinding.ensureInitialized();
  //
  await Firebase.initializeApp(
    name: "Pludin",
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //  ,
  // NOTIFICATION PERMISSION
  // show notification alert ( banner )
  NotificationSettings settings = await firebaseMessaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );
  if (kDebugMode) {
    print('User granted permission =====> ${settings.authorizationStatus}');
  }
  //
  // background access
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  // foreground access
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  //
  /*// FETCH TOKEN
  final token = await _firebaseMessaging.getToken();

  //
  if (kDebugMode) {
    print('=============> HERE IS MY DEVICE TOKEN <=============');
    print('======================================================');
    print(token);
    print('======================================================');
    print('======================================================');
  }

  // save token locally
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setString('deviceToken', token.toString());
  //
  */
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}

Future _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (kDebugMode) {
    print("Handling a background message: ${message.messageId}");
  }
}
