import 'package:flutter/material.dart';

class Containermidle extends StatelessWidget {
  Containermidle({this.imagepath, required this.OnTapping});
  String? imagepath;

  Function() OnTapping;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTapping,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(255, 179, 0, 1),
                  spreadRadius: 1,
                  blurRadius: 1,
                )
              ],
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: Image.asset(
                "$imagepath",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
