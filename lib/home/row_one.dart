import 'package:final_project/Logic/containermidle.dart';
import 'package:final_project/Logic/containerright.dart';

import 'package:final_project/Screens/Animals/BirdScreen.dart';
import 'package:final_project/Screens/Animals/CatScreen.dart';
import 'package:final_project/Screens/Animals/DogScreen.dart';
import 'package:final_project/Screens/Animals/FurryScreen.dart';
import 'package:final_project/Screens/Animals/HorseScreen.dart';
import 'package:final_project/Screens/Drawer_screen.dart';
import 'package:final_project/Screens/drawerScreen.dart';
import 'package:final_project/main.dart';
import 'package:final_project/quiz/writing_view.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:carousel_slider/carousel_slider.dart';

class row_one extends StatefulWidget {
  const row_one({super.key});

  @override
  State<row_one> createState() => _row_oneState();
}

class _row_oneState extends State<row_one> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 110,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              SizedBox(width: 30),
              Containermidle(
                  OnTapping: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CatScreen();
                    }));
                  },
                  imagepath: 'images/cat.png'),
              SizedBox(width: 20),
              Containermidle(
                  OnTapping: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FurryScreen();
                    }));
                  },
                  imagepath: 'images/h3.png'),
              SizedBox(width: 20),
              Containermidle(
                  OnTapping: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DogScreen();
                    }));
                  },
                  imagepath: 'images/dog.png'),
              SizedBox(width: 20),
              Containermidle(
                  OnTapping: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return BirdScreen();
                    }));
                  },
                  imagepath: 'images/b3.png'),
              SizedBox(width: 10),
              Containermidle(
                  OnTapping: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HorseScreen();
                    }));
                  },
                  imagepath: 'images/horse.png'),
            ]),
          ),
        ),
      ),
    );
  }
}
