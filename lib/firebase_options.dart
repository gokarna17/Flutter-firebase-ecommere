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
    apiKey: 'AIzaSyD3TSFGqHVfsZVv_W9D8zmbJOCI1pOA0MI',
    appId: '1:770151082158:web:0b3cc5d230c57a0429653f',
    messagingSenderId: '770151082158',
    projectId: 'ecommerce-6d898',
    authDomain: 'ecommerce-6d898.firebaseapp.com',
    storageBucket: 'ecommerce-6d898.appspot.com',
    measurementId: 'G-B7FK6LGLJB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDD8NQIeg510wEwcAUhdoG7HUt8f3xejCE',
    appId: '1:770151082158:android:d53b05263bdf2ff929653f',
    messagingSenderId: '770151082158',
    projectId: 'ecommerce-6d898',
    storageBucket: 'ecommerce-6d898.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCizppDRuV6yk3YIm20tN2colY_a36oCsE',
    appId: '1:770151082158:ios:d15b3a8bbbd660f529653f',
    messagingSenderId: '770151082158',
    projectId: 'ecommerce-6d898',
    storageBucket: 'ecommerce-6d898.appspot.com',
    iosBundleId: 'com.example.flutterEcommerce',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCizppDRuV6yk3YIm20tN2colY_a36oCsE',
    appId: '1:770151082158:ios:467d0a14ac07116229653f',
    messagingSenderId: '770151082158',
    projectId: 'ecommerce-6d898',
    storageBucket: 'ecommerce-6d898.appspot.com',
    iosBundleId: 'com.example.flutterEcommerce.RunnerTests',
  );
}
