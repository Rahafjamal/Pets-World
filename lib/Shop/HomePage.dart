import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/Shop/CreateNewItem.dart';
import 'package:final_project/Shop/cart.dart';
import 'package:final_project/Shop/constans.dart';
import 'package:final_project/Shop/home_body.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key, required this.type});
  String type;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  bool admin = false;
  void initState() {
    // TODO: implement initState
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        FirebaseFirestore.instance
            .collection("users")
            .doc(user.uid)
            .get()
            .then((value) {
          if (value["isAdmin"] == true) {
            setState(() {
              admin = true;
            });
          }
        });
        print('User is signed in!');
      }
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          admin
              ? FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateNewFile(
                                  type: widget.type,
                                )));
                  },
                  child: const Icon(Icons.add),
                )
              : Container(),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cart()),
              );
            },
            child: const Icon(Icons.shopping_bag),
            backgroundColor: kPrimaryColor,
          ),
        ],
      ),
      backgroundColor: kPrimaryColor,
      appBar: homeAppbar(),
      body: HomeBody(
        type: widget.type,
      ),
    );
  }

  AppBar homeAppbar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text(
        "Welcome to Pets store",
        style: TextStyle(
            fontFamily: 'Comfortaa-VariableFont_wght',
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
      centerTitle: false,
    );
  }
}
