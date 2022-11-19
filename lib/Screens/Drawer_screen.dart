import 'dart:io';

import 'package:final_project/Screens/Login_screen.dart';
import 'package:final_project/home/Home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Drawer_screen extends StatefulWidget {
  const Drawer_screen({super.key});

  @override
  State<Drawer_screen> createState() => _Drawer_screenState();
}

class _Drawer_screenState extends State<Drawer_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(250),
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 70,
              backgroundImage: AssetImage("images/user.png"),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(right: 110)),
                Icon(
                  Icons.circle_rounded,
                  size: 12,
                  color: Color.fromARGB(255, 78, 241, 84),
                ),
                Text(
                  "",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: ListView(children: [
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: ListTile(
                    onTap: () {
                      setState(() {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: ((context) {
                          return Firestore();
                        })));
                      });
                    },
                    leading: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ListTile(
                    onTap: () {
                      FirebaseAuth.instance.signOut();
                      setState(() {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: ((context) {
                          return Login_screen();
                        })));
                      });
                    },
                    leading: Icon(
                      Icons.logout,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Log out",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ListTile(
                      onTap: () {
                        exit(0);
                      },
                      leading: Icon(
                        Icons.exit_to_app,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Exit app",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.8),
                      )),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
