import 'dart:io';

import 'package:final_project/Screens/Login_screen.dart';
import 'package:final_project/Screens/firestore.dart';
import 'package:flutter/material.dart';

import '../CatModels/SizeDrop.dart';

class DrawerScreen extends StatefulWidget {
  DrawerScreen(
      {super.key,
      required this.Data,
      required this.FilterData,
      required this.type});

  Function FilterData;
  String type;
  var Data;
  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  late Function FilterData;
  var Data;
  late String type;
  bool _SwitchVal = true;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 15, 136, 145),
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
          Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(250),
              ),
            ),
          ),
          CircleAvatar(
            radius: 50.0,
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
              ListTile(
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
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: ((context) {
                      return Login_screen();
                    })));
                  });
                },
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  "Log out",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                  onTap: () {
                    exit(0);
                  },
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                  title: Text(
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
