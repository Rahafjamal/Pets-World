import 'package:final_project/Logic/containermidle.dart';
import 'package:final_project/Logic/containerright.dart';
import 'package:final_project/Logic/containetLeft.dart';
import 'package:final_project/Screens/CatScreen.dart';
import 'package:final_project/Screens/DogScreen.dart';
import 'package:final_project/Screens/HorseScreen.dart';
import 'package:final_project/Screens/bird.dart';
import 'package:final_project/main.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Firestore extends StatefulWidget {
  const Firestore({super.key});

  @override
  State<Firestore> createState() => _FirestoreState();
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class _FirestoreState extends State<Firestore> {
  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            width: double.infinity,
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item,
                          height: 700,
                          fit: BoxFit.cover,
                          width: double.infinity),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        FirebaseFirestore.instance
            .collection('user')
            .doc(user.uid)
            .get()
            .then((value) {
          setState(() {
            isAdmin = value.data()!['isAdmin'];
          });
        });
      }
    });
  }

  bool isAdmin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(height: 30),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0, top: 0),
                  child: Image.asset(
                    "images/55.png",
                    scale: 10,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/55.png'), fit: BoxFit.fill),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                    width: double.infinity,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                      ),
                      items: imageSliders,
                    )),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Center(
                    child: Row(
                      children: [
                        ContainerRight(
                          imagepath: "images/horse.png",
                          OnTapping: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return HorseScreen();
                              },
                            ));
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Containermidle(
                          OnTapping: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return CatScreen();
                              },
                            ));
                          },
                          imagepath: "images/cat.png",
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ContainerLeft(
                          OnTapping: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return CatScreen();
                              },
                            ));
                          },
                          imagepath: "images/cat.png",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Center(
                    child: Row(
                      children: [
                        ContainerLeft(
                          imagepath: "images/horse.png",
                          OnTapping: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return HorseScreen();
                              },
                            ));
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Containermidle(
                          OnTapping: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return CatScreen();
                              },
                            ));
                          },
                          imagepath: "images/cat.png",
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ContainerRight(
                          OnTapping: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return CatScreen();
                              },
                            ));
                          },
                          imagepath: "images/cat.png",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
