import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class containerN extends StatelessWidget {
  containerN({this.imagepath, required this.OnTapping, required this.name});
  String? imagepath;
  String? name;

  Function() OnTapping;
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return GestureDetector(
      onTap: OnTapping,
      child: Column(children: [
        Container(
          width: width / 3.5,
          height: height / 3.7,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 0,
                blurRadius: 2,
              )
            ],
            borderRadius: const BorderRadius.all(Radius.circular(24)),
          ),
          child: Center(
            child: Container(
              alignment: Alignment.center,
              width: width / 4,
              height: height / 5,
              child: Text(
                '${name}',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Comfortaa-VariableFont_wght',
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
