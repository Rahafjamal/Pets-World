import 'package:final_project/Logic/containermidle.dart';
import 'package:final_project/Screens/Animals/BirdScreen.dart';
import 'package:final_project/Screens/Animals/CatScreen.dart';
import 'package:final_project/Screens/Animals/DogScreen.dart';
import 'package:final_project/Screens/Animals/FurryScreen.dart';
import 'package:final_project/Screens/Animals/HorseScreen.dart';
import 'package:final_project/Screens/Animals/RabbitScreen.dart';
import 'package:flutter/material.dart';

class row_two extends StatefulWidget {
  const row_two({super.key});

  @override
  State<row_two> createState() => _row_twoState();
}

class _row_twoState extends State<row_two> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              SizedBox(width: 0),
              Containermidle(
                  name: 'Bird',
                  OnTapping: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return BirdScreen();
                    }));
                  },
                  imagepath: 'images/bird.svg'),
              SizedBox(width: 20),
              Containermidle(
                  name: 'Horse',
                  OnTapping: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HorseScreen();
                    }));
                  },
                  imagepath: 'images/horse.svg'),
              SizedBox(width: 20),
              Containermidle(
                  name: 'Rabbit',
                  OnTapping: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RabbitScreen();
                    }));
                  },
                  imagepath: 'images/rab.svg'),
            ]),
          ),
        ),
      ),
    );
  }
}
