import 'package:final_project/CatModels/AppBarOne.dart';
import 'package:final_project/home/row_one.dart';
import 'package:final_project/home/row_two.dart';
import 'package:final_project/Screens/Drawer_screen.dart';
import 'package:final_project/home/TopHome.dart';
import 'package:flutter/material.dart';

class Firestore extends StatefulWidget {
  const Firestore({super.key});

  @override
  State<Firestore> createState() => _FirestoreState();
}

class _FirestoreState extends State<Firestore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: const CatAppBar(),
      drawer: Drawer_screen(),
      body: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          drawer: Drawer_screen(),
          body: ListView(children: [
            Center(
                child: Column(children: [
              SizedBox(height: 5),
              Home(),
              SizedBox(height: 10),
              row_one(),
              SizedBox(height: 25),
              row_two(),
            ]))
          ]),
        ),
      ),
    ));
  }
}
