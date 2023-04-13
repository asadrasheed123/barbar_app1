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
    apiKey: 'AIzaSyCMc2lLjiglUhtRHZ8ml9jmsGBRiDYlZ5s',
    appId: '1:901392716655:web:10186c55dd2ed5c7288e9a',
    messagingSenderId: '901392716655',
    projectId: 'barber-587b7',
    authDomain: 'barber-587b7.firebaseapp.com',
    storageBucket: 'barber-587b7.appspot.com',
    measurementId: 'G-VF7S4DQFRH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC5XCemRurq6q_gS5EMwZET9uIyMJ7ohD8',
    appId: '1:901392716655:android:84963419cb558c47288e9a',
    messagingSenderId: '901392716655',
    projectId: 'barber-587b7',
    storageBucket: 'barber-587b7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD17SVnOWr80tX3MDoU1Vb_HkfCaJnpjaY',
    appId: '1:901392716655:ios:04f44993bb667dc9288e9a',
    messagingSenderId: '901392716655',
    projectId: 'barber-587b7',
    storageBucket: 'barber-587b7.appspot.com',
    iosClientId: '901392716655-ro97h2teehufprbfef8g3ak1gflc2mc6.apps.googleusercontent.com',
    iosBundleId: 'com.example.barbarApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD17SVnOWr80tX3MDoU1Vb_HkfCaJnpjaY',
    appId: '1:901392716655:ios:04f44993bb667dc9288e9a',
    messagingSenderId: '901392716655',
    projectId: 'barber-587b7',
    storageBucket: 'barber-587b7.appspot.com',
    iosClientId: '901392716655-ro97h2teehufprbfef8g3ak1gflc2mc6.apps.googleusercontent.com',
    iosBundleId: 'com.example.barbarApp',
  );
}