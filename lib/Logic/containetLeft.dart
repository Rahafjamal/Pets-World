import 'package:flutter/material.dart';

class ContainerLeft extends StatelessWidget {
  ContainerLeft({this.tilte, this.imagepath, required this.OnTapping});

  String? imagepath;
  String? tilte;
  Function() OnTapping;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTapping,
      child: Container(
        width: 150,
        height: 75,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 5,
                blurRadius: 7,
              )
            ],
            color: Color(0xffd7e5ff),
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
            const SizedBox(
              width: 10,
            ),
            Text(
              "$tilte",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
