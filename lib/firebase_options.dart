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
    apiKey: 'AIzaSyBKc24bqG1LN-5-4MMCK1VZ3RbwCP6v3aw',
    appId: '1:640696792111:web:734dff4867ff613cb282da',
    messagingSenderId: '640696792111',
    projectId: 'fazaa-4a55a',
    authDomain: 'fazaa-4a55a.firebaseapp.com',
    storageBucket: 'fazaa-4a55a.appspot.com',
    measurementId: 'G-RCJ6VV496X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCrJhpriQoEVkBmkHXF_oYyV3Qss55YLTA',
    appId: '1:640696792111:android:df4364ec875c7298b282da',
    messagingSenderId: '640696792111',
    projectId: 'fazaa-4a55a',
    storageBucket: 'fazaa-4a55a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC4go3NL48j_oDSK-yJ7GWmrqD9AO9NyLQ',
    appId: '1:640696792111:ios:32f3266388a29b76b282da',
    messagingSenderId: '640696792111',
    projectId: 'fazaa-4a55a',
    storageBucket: 'fazaa-4a55a.appspot.com',
    iosBundleId: 'com.example.fazaa',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC4go3NL48j_oDSK-yJ7GWmrqD9AO9NyLQ',
    appId: '1:640696792111:ios:be0108c3f8b90b96b282da',
    messagingSenderId: '640696792111',
    projectId: 'fazaa-4a55a',
    storageBucket: 'fazaa-4a55a.appspot.com',
    iosBundleId: 'com.example.fazaa.RunnerTests',
  );
}
