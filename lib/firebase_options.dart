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
    apiKey: 'AIzaSyBC89i3hngn_X1536-fF7T3ZFtUaXY0YWM',
    appId: '1:344733125968:web:a65af5a892da9bdd59f055',
    messagingSenderId: '344733125968',
    projectId: 'login-ccd60',
    authDomain: 'login-ccd60.firebaseapp.com',
    storageBucket: 'login-ccd60.appspot.com',
    measurementId: 'G-6QMRB2BBS6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDSBaChrfCvQzuxNORtHObJduvVaQWqOms',
    appId: '1:344733125968:android:67132d3d0151816259f055',
    messagingSenderId: '344733125968',
    projectId: 'login-ccd60',
    storageBucket: 'login-ccd60.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQq66aC_OdN3bFi4mdjjl8oU3LQZqTFJs',
    appId: '1:344733125968:ios:6068984f710300a659f055',
    messagingSenderId: '344733125968',
    projectId: 'login-ccd60',
    storageBucket: 'login-ccd60.appspot.com',
    iosBundleId: 'com.example.login',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAQq66aC_OdN3bFi4mdjjl8oU3LQZqTFJs',
    appId: '1:344733125968:ios:4aec70c972f6b31e59f055',
    messagingSenderId: '344733125968',
    projectId: 'login-ccd60',
    storageBucket: 'login-ccd60.appspot.com',
    iosBundleId: 'com.example.login.RunnerTests',
  );
}