// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD6MZRZf1dR-iOpQ7k2r2QHbbe4P_c_o0U',
    appId: '1:816063031288:web:d71855af5afb55074ed80d',
    messagingSenderId: '816063031288',
    projectId: 'car-app-5917d',
    authDomain: 'car-app-5917d.firebaseapp.com',
    storageBucket: 'car-app-5917d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCF2a8EAsBGZGGq9-P7tCb3yHcX5vbs5MM',
    appId: '1:816063031288:android:3653b2436d5584ba4ed80d',
    messagingSenderId: '816063031288',
    projectId: 'car-app-5917d',
    storageBucket: 'car-app-5917d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDf-kz4zpZp-beu15Q6mftjHxhkSS3Xr84',
    appId: '1:816063031288:ios:08b7d4b8b18a81994ed80d',
    messagingSenderId: '816063031288',
    projectId: 'car-app-5917d',
    storageBucket: 'car-app-5917d.appspot.com',
    iosBundleId: 'com.example.worldOfJourney',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDf-kz4zpZp-beu15Q6mftjHxhkSS3Xr84',
    appId: '1:816063031288:ios:f7a21c9137229c684ed80d',
    messagingSenderId: '816063031288',
    projectId: 'car-app-5917d',
    storageBucket: 'car-app-5917d.appspot.com',
    iosBundleId: 'com.example.worldOfJourney.RunnerTests',
  );
}
