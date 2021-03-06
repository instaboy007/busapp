// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'firebase_options.dart';

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

// await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );


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
    apiKey: 'AIzaSyDstatYNaGvBxXg8eS5kmz7Tj4Fwg9kV3E',
    appId: '1:692596527957:web:c6a5c3cc449cd9473c95dc',
    messagingSenderId: '692596527957',
    projectId: 'cloudbusapp-c288d',
    authDomain: 'cloudbusapp-c288d.firebaseapp.com',
    storageBucket: 'cloudbusapp-c288d.appspot.com',
    measurementId: 'G-0PE13QJ056',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBH3mB4HB5ctoo50ounIUoMkOC7y2d4v7I',
    appId: '1:692596527957:android:b540d17261dd4d263c95dc',
    messagingSenderId: '692596527957',
    projectId: 'cloudbusapp-c288d',
    storageBucket: 'cloudbusapp-c288d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBvODt5RrEiCDrz-xRzbq_JWQuquwVhiog',
    appId: '1:692596527957:ios:778308173348e4223c95dc',
    messagingSenderId: '692596527957',
    projectId: 'cloudbusapp-c288d',
    storageBucket: 'cloudbusapp-c288d.appspot.com',
    iosClientId: '692596527957-hj7darfofkb6fb7l4qo6i5rs0dq1hm5b.apps.googleusercontent.com',
    iosBundleId: 'com.example.busapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBvODt5RrEiCDrz-xRzbq_JWQuquwVhiog',
    appId: '1:692596527957:ios:778308173348e4223c95dc',
    messagingSenderId: '692596527957',
    projectId: 'cloudbusapp-c288d',
    storageBucket: 'cloudbusapp-c288d.appspot.com',
    iosClientId: '692596527957-hj7darfofkb6fb7l4qo6i5rs0dq1hm5b.apps.googleusercontent.com',
    iosBundleId: 'com.example.busapp',
  );
}
