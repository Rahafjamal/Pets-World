import 'package:final_project/Screens/Animals/CatScreen.dart';
import 'package:final_project/Screens/Animals/RabbitScreen.dart';
import 'package:final_project/Screens/firestore.dart';
import 'package:final_project/Shop/HomePage.dart';
import 'package:final_project/Shop/constans.dart';
import 'package:final_project/Shop/details_screen.dart';
import 'package:final_project/quiz/writing_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_slider/intro_slider.dart';

import 'Screens/Splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await dotenv.load(fileName: ".env");
  runApp(MaterialApp(
    routes: {
        DetailsScreen.screenRoute: (context) => DetailsScreen(),
      },
      home: HomeScreen(),
      title: "Electrecal Store",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: kPrimaryColor),
      ),
    ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Firestore(),
    );
  }
}
