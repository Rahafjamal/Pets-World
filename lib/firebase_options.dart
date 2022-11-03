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
    apiKey: 'AIzaSyBMcIkB0lRIbUoazyQjfJzbeIfc5EIS7vM',
    appId: '1:918725192901:web:7ac37bed0b84c2e1afd4ac',
    messagingSenderId: '918725192901',
    projectId: 'final-project-1cce1',
    authDomain: 'final-project-1cce1.firebaseapp.com',
    storageBucket: 'final-project-1cce1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBEGCda5w5rXvyfSkMpzfbaJljUWZfNcow',
    appId: '1:918725192901:android:fc769ebcdd2061cfafd4ac',
    messagingSenderId: '918725192901',
    projectId: 'final-project-1cce1',
    storageBucket: 'final-project-1cce1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBJBXAKsj5aybC7AUoA7T7WdsfdF9LEbeM',
    appId: '1:918725192901:ios:081f15f485c72b62afd4ac',
    messagingSenderId: '918725192901',
    projectId: 'final-project-1cce1',
    storageBucket: 'final-project-1cce1.appspot.com',
    iosClientId: '918725192901-g1pttb94oo903eoel2ilc4o0i0np5nno.apps.googleusercontent.com',
    iosBundleId: 'com.example.finalProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBJBXAKsj5aybC7AUoA7T7WdsfdF9LEbeM',
    appId: '1:918725192901:ios:081f15f485c72b62afd4ac',
    messagingSenderId: '918725192901',
    projectId: 'final-project-1cce1',
    storageBucket: 'final-project-1cce1.appspot.com',
    iosClientId: '918725192901-g1pttb94oo903eoel2ilc4o0i0np5nno.apps.googleusercontent.com',
    iosBundleId: 'com.example.finalProject',
  );
}
