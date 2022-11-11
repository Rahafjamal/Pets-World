import 'package:flutter/material.dart';

class Containermidle extends StatelessWidget {
  Containermidle({this.imagepath, required this.OnTapping});
  String? imagepath;

  Function() OnTapping;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTapping,
      child: Container(
        width: 100,
        height: 100,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color(0xffd7e5ff),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.1,
                blurRadius: 0.1,
              )
            ],
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
                topLeft: Radius.circular(25))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "$imagepath",
              scale: 2,
            ),
          ],
        ),
      ),
    );
  }
}
