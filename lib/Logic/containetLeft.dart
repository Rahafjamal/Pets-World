import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class containerN extends StatelessWidget {
  containerN({this.imagepath, required this.OnTapping, required this.name});
  String? imagepath;
  String? name;

  Function() OnTapping;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTapping,
      child: Column(
        children: [
          Container(
            width: 150,
            height: 180,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 1,
                  blurRadius: 1,
                )
              ],
              borderRadius: const BorderRadius.all(Radius.circular(10)),
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
