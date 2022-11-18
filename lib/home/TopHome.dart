import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            child: Text(
              'WE LOVE YOU HUMAN',
              style: TextStyle(
                letterSpacing: 1,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 300,
            padding: EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/home.png'))),
          ),
        ],
      ),
    );
  }
}
