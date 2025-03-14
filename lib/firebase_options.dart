// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAMQzeEEypcce6tlBt9WT7G3Yj-_K6sQiM',
    appId: '1:991082186342:web:fbc958b1e00b7249368fa7',
    messagingSenderId: '991082186342',
    projectId: 'portfolio-e6488',
    authDomain: 'portfolio-e6488.firebaseapp.com',
    storageBucket: 'portfolio-e6488.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDgwm6Ej36FbqmvrMWjR7J8E6_hk4j0WCY',
    appId: '1:991082186342:android:f18a00482a7702a2368fa7',
    messagingSenderId: '991082186342',
    projectId: 'portfolio-e6488',
    storageBucket: 'portfolio-e6488.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAMSYJGdlSEXix74THZ_PIAHilt6pn5qsU',
    appId: '1:991082186342:ios:09df145032b44f50368fa7',
    messagingSenderId: '991082186342',
    projectId: 'portfolio-e6488',
    storageBucket: 'portfolio-e6488.firebasestorage.app',
    iosBundleId: 'com.example.myPortfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAMSYJGdlSEXix74THZ_PIAHilt6pn5qsU',
    appId: '1:991082186342:ios:09df145032b44f50368fa7',
    messagingSenderId: '991082186342',
    projectId: 'portfolio-e6488',
    storageBucket: 'portfolio-e6488.firebasestorage.app',
    iosBundleId: 'com.example.myPortfolio',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAMQzeEEypcce6tlBt9WT7G3Yj-_K6sQiM',
    appId: '1:991082186342:web:6972da56591d96f3368fa7',
    messagingSenderId: '991082186342',
    projectId: 'portfolio-e6488',
    authDomain: 'portfolio-e6488.firebaseapp.com',
    storageBucket: 'portfolio-e6488.firebasestorage.app',
  );
}
