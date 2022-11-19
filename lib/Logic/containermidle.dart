import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Containermidle extends StatelessWidget {
  Containermidle({this.imagepath, required this.OnTapping, required this.name});
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
            width: 130,
            height: 150,
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: SvgPicture.asset(
                    "$imagepath",
                    width: 65,
                    height: 65,
                    alignment: Alignment.center,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    '${name}',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Comfortaa-VariableFont_wght',
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
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
