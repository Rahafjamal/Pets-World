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
      child: Column(
        children: [
          Container(
            width: width / 3.5,
            height: height / 4,
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      '${name}',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Comfortaa-VariableFont_wght',
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
