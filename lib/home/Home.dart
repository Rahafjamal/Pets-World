import 'package:final_project/CatModels/AppBarOne.dart';
import 'package:final_project/Chat/chat.dart';
import 'package:final_project/home/row_one.dart';
import 'package:final_project/home/row_two.dart';
import 'package:final_project/Screens/Drawer_screen.dart';
import 'package:final_project/home/TopHome.dart';
import 'package:final_project/quiz/writing_view.dart';
import 'package:flutter/material.dart';

class Firestore extends StatefulWidget {
  const Firestore({super.key});

  @override
  State<Firestore> createState() => _FirestoreState();
}

class _FirestoreState extends State<Firestore> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: const CatAppBar(),
      drawer: Drawer_screen(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: width,
              height: height,
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                    width: width,
                    height: height,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white,
                            Color.fromARGB(255, 156, 182, 255),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      left: width / 10,
                      top: height / 45,
                      height: 2 * height / 45,
                      width: width - (width / 5),
                      child: Text(
                        'Choose Your pet . . .',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Comfortaa-VariableFont_wght',
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Positioned(
                    height: height / 6,
                    left: width * 0.025 + width / 10,
                    top: 4 * height / 45,
                    width: width - (width / 4),
                    child: Align(alignment: Alignment.center, child: row_one()),
                  ),
                  Positioned(
                    height: height / 6,
                    left: width * 0.025 + width / 10,
                    top: 6 * height / 45 + height / 7,
                    width: width - (width / 4),
                    child: Align(alignment: Alignment.center, child: row_two()),
                  ),
                  Positioned(
                    left: width / 10,
                    height: height / 7,
                    width: width - (width / 5),
                    top: 2 * (height / 7) + (8 * height / 45),
                    child: Card(
                      shadowColor: Colors.blue[900],
                      elevation: 8,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return ChatScreen();
                            },
                          ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 129, 162, 255),
                                Color.fromARGB(255, 129, 162, 255),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ' ',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                ' ',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      left: width / 10,
                      top: 3 * (height / 7) + (10 * height / 45),
                      height: 2 * height / 45,
                      width: width - (width / 5),
                      child: Text(
                        'Should you get a pet ?',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Comfortaa-VariableFont_wght',
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Positioned(
                      left: width * 0.025 + width / 10,
                      top: 3 * (height / 7) +
                          (9 * height / 45) +
                          (3 * height / 45),
                      height: 2 * height / 45,
                      width: width - (width / 5),
                      child: Row(
                        children: [
                          Text(
                            "Let's start the",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Comfortaa-VariableFont_wght',
                              letterSpacing: 1,
                            ),
                          ),
                          TextButton(
                            child: const Text(
                              'QUIZ !',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Comfortaa-VariableFont_wght',
                                letterSpacing: 1,
                                color: Color.fromRGBO(13, 71, 161, 1),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return WritingView();
                                },
                              ));
                            },
                          ),
                        ],
                      )),
                  Positioned(
                      left: width / 10,
                      height: height / 7,
                      width: width - (width / 5),
                      top: 2 * (height / 7) + (8 * height / 45),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/chat.png'))),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
