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
    apiKey: 'AIzaSyBXsqRSoQ_beMRVkE6HmtRoMAygeJWDcJs',
    appId: '1:92249684821:web:d3ec5964ecb5dc3ee6cddc',
    messagingSenderId: '92249684821',
    projectId: 'signin-b692e',
    authDomain: 'signin-b692e.firebaseapp.com',
    storageBucket: 'signin-b692e.appspot.com',
    measurementId: 'G-9CMMJ37Y3S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAJAeXv7NVFEEAWYeou7vzTVnmu8i3DCsE',
    appId: '1:92249684821:android:56903867cb14bdbfe6cddc',
    messagingSenderId: '92249684821',
    projectId: 'signin-b692e',
    storageBucket: 'signin-b692e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAXzyxDk2PdmGyEdkT1ybCrJXG-AvOJ9fg',
    appId: '1:92249684821:ios:b31e8a91f22070bee6cddc',
    messagingSenderId: '92249684821',
    projectId: 'signin-b692e',
    storageBucket: 'signin-b692e.appspot.com',
    iosClientId: '92249684821-grl6gcfjfvn7glv8dbntba1filrfmrn7.apps.googleusercontent.com',
    iosBundleId: 'com.example.googlesignin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAXzyxDk2PdmGyEdkT1ybCrJXG-AvOJ9fg',
    appId: '1:92249684821:ios:b31e8a91f22070bee6cddc',
    messagingSenderId: '92249684821',
    projectId: 'signin-b692e',
    storageBucket: 'signin-b692e.appspot.com',
    iosClientId: '92249684821-grl6gcfjfvn7glv8dbntba1filrfmrn7.apps.googleusercontent.com',
    iosBundleId: 'com.example.googlesignin',
  );
}
