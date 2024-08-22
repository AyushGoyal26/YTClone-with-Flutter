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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAquLufA_CXLvokIeQoTM8o8p6zvmPA6M8',
    appId: '1:131313460297:android:7e93544ae1d5c7eee18b98',
    messagingSenderId: '131313460297',
    projectId: 'fir-6431c',
    storageBucket: 'fir-6431c.appspot.com',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCSsnT5p4Z96dpPH-fjd6lItnJ5920UsM8',
    appId: '1:131313460297:web:b80bdad4c03739abe18b98',
    messagingSenderId: '131313460297',
    projectId: 'fir-6431c',
    authDomain: 'fir-6431c.firebaseapp.com',
    storageBucket: 'fir-6431c.appspot.com',
    measurementId: 'G-525J88TP90',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAfTKokRa5x1veIL9PmDB0GDcBF0Alu6p4',
    appId: '1:131313460297:ios:37eb91674c0192fae18b98',
    messagingSenderId: '131313460297',
    projectId: 'fir-6431c',
    storageBucket: 'fir-6431c.appspot.com',
    iosClientId: '131313460297-5517u8vsklccbej0a6ldc1ov3qhrtaal.apps.googleusercontent.com',
    iosBundleId: 'com.example.youtubeDemo',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAfTKokRa5x1veIL9PmDB0GDcBF0Alu6p4',
    appId: '1:131313460297:ios:37eb91674c0192fae18b98',
    messagingSenderId: '131313460297',
    projectId: 'fir-6431c',
    storageBucket: 'fir-6431c.appspot.com',
    iosClientId: '131313460297-5517u8vsklccbej0a6ldc1ov3qhrtaal.apps.googleusercontent.com',
    iosBundleId: 'com.example.youtubeDemo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCSsnT5p4Z96dpPH-fjd6lItnJ5920UsM8',
    appId: '1:131313460297:web:fb3f66dad876d19ce18b98',
    messagingSenderId: '131313460297',
    projectId: 'fir-6431c',
    authDomain: 'fir-6431c.firebaseapp.com',
    storageBucket: 'fir-6431c.appspot.com',
    measurementId: 'G-F40W5B5EMT',
  );

}