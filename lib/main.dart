import 'package:final_project/Screens/BetScreen.dart';
import 'package:final_project/Screens/CatScreen.dart';
import 'package:final_project/Screens/DogScreen.dart';
import 'package:final_project/Screens/FishScreen.dart';
import 'package:final_project/Screens/HorseScreenCard.dart';
import 'package:final_project/Screens/firestore.dart';
import 'package:intro_slider/intro_slider.dart';

import 'Screens/Splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Splash_screen(),
    );
  }
}
