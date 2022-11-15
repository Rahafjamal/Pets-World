import 'dart:io';

import 'package:final_project/Screens/Login_screen.dart';
import 'package:final_project/Screens/firestore.dart';
import 'package:flutter/material.dart';

import '../CatModels/SizeDrop.dart';

class DrawerScreen extends StatelessWidget {
  DrawerScreen(
      {super.key,
      required this.Data,
      required this.FilterData,
      required this.type});

  Function FilterData;
  String type;
  var Data;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 15, 136, 145),
      child: Column(
        children: [
          SizeDrop(
            FilterData: FilterData,
            Data: Data,
            Filter: const ["Size", "Small", "Medium", "Large"],
            value: "Size",
            type: type,
            params: "size",
          ),
          SizeDrop(
            FilterData: FilterData,
            Data: Data,
            Filter: const ["Age", "Baby", "Young", "Adult", "Senior"],
            value: "Age",
            type: type,
            params: "age",
          ),
          SizeDrop(
            FilterData: FilterData,
            Data: Data,
            Filter: const ['Gender', 'Female', 'Male'],
            value: "Gender",
            type: type,
            params: "gender",
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 80),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(250),
              ),
            ),
          ),
          const CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage("images/user.png"),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(right: 110)),
              const Icon(
                Icons.circle_rounded,
                size: 12,
                color: Color.fromARGB(255, 78, 241, 84),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: ListView(children: [
              const SizedBox(
                height: 15,
              ),
              ListTile(
                onTap: () {
                  
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Firestore();
                    })));
                },
                leading: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: const Text(
                  "Home",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: ((context) {
                    return const Login_screen();
                  })));
                },
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: const Text(
                  "Log out",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListTile(
                  onTap: () {
                    exit(0);
                  },
                  leading: const Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Exit app",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ]),
          )
        ],
      ),
    );
  }
}
