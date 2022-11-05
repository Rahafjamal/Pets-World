import 'package:final_project/Screens/Login_screen.dart';
import 'package:final_project/main.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:intro_slider/intro_slider.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd1d1d1),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/11.jpg'), fit: BoxFit.cover),
          ),
          child: Container(
            padding: EdgeInsets.only(top: 200, left: 160),
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    EdgeInsets.only(top: 10, bottom: 5, right: 15, left: 15),
                backgroundColor: Color(0xfffdb120),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "    Let's Go    ",
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: "Tajawal-Light",
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600),
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Login_screen();
                    },
                  ));
                });
              },
            ),
          )),
    );
  }
}
