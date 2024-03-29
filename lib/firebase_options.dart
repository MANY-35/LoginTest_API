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
    apiKey: 'AIzaSyCMGv4pWJl3ttn8_UbhB6M3o72CDtHgaBs',
    appId: '1:611607906934:web:4d42752bf84d357b836d57',
    messagingSenderId: '611607906934',
    projectId: 'logintest-66f8f',
    authDomain: 'logintest-66f8f.firebaseapp.com',
    storageBucket: 'logintest-66f8f.appspot.com',
    measurementId: 'G-VK7G8WSPPC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBbE5g8P4ygrHaJlM9ma3wA4FGq6i956KE',
    appId: '1:611607906934:android:cda26a58791f1144836d57',
    messagingSenderId: '611607906934',
    projectId: 'logintest-66f8f',
    storageBucket: 'logintest-66f8f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBNc0HcW9LnqLVI1DQVt5dYr4F5D6F9DQg',
    appId: '1:611607906934:ios:bd73010682ce50f4836d57',
    messagingSenderId: '611607906934',
    projectId: 'logintest-66f8f',
    storageBucket: 'logintest-66f8f.appspot.com',
    iosClientId: '611607906934-64n17a9cc366r9tnd6an7fmqi56jpqrj.apps.googleusercontent.com',
    iosBundleId: 'com.example.logintest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBNc0HcW9LnqLVI1DQVt5dYr4F5D6F9DQg',
    appId: '1:611607906934:ios:71ee60c71d5ab816836d57',
    messagingSenderId: '611607906934',
    projectId: 'logintest-66f8f',
    storageBucket: 'logintest-66f8f.appspot.com',
    iosClientId: '611607906934-epib9ju1u7gfncihv8dujboscn2lstdv.apps.googleusercontent.com',
    iosBundleId: 'com.example.logintest.RunnerTests',
  );
}
