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
    apiKey: 'AIzaSyClBhAlHmzE-tub6H2erBVI87FBX6UVdws',
    appId: '1:978151017556:web:b04298c1b1caeb042771c1',
    messagingSenderId: '978151017556',
    projectId: 'portfolio-4dc9f',
    authDomain: 'portfolio-4dc9f.firebaseapp.com',
    storageBucket: 'portfolio-4dc9f.appspot.com',
    measurementId: 'G-MG93D3BBBX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAsrX91WmjVP9_PsfXY2kT2nTYtVNxMM3o',
    appId: '1:978151017556:android:4133af4e762c42b32771c1',
    messagingSenderId: '978151017556',
    projectId: 'portfolio-4dc9f',
    storageBucket: 'portfolio-4dc9f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6xEcUW2FVCfLNIFxgZiai3jNTyDwVBXg',
    appId: '1:978151017556:ios:2d3ee5609242b53f2771c1',
    messagingSenderId: '978151017556',
    projectId: 'portfolio-4dc9f',
    storageBucket: 'portfolio-4dc9f.appspot.com',
    iosBundleId: 'com.example.newPortfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA6xEcUW2FVCfLNIFxgZiai3jNTyDwVBXg',
    appId: '1:978151017556:ios:2d3ee5609242b53f2771c1',
    messagingSenderId: '978151017556',
    projectId: 'portfolio-4dc9f',
    storageBucket: 'portfolio-4dc9f.appspot.com',
    iosBundleId: 'com.example.newPortfolio',
  );
}
