import 'package:flutter/material.dart';

class ContainerLeft extends StatelessWidget {
  ContainerLeft({this.imagepath, required this.OnTapping});

  String? imagepath;

  Function() OnTapping;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTapping,
      child: Container(
        width: 100,
        height: 100,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.1,
                blurRadius: 0.1,
              )
            ],
            color: Color(0xfffab7c9),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
                topLeft: Radius.circular(25))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "$imagepath",
                scale: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
