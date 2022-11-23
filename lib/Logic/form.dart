import 'package:flutter/material.dart';

class form extends StatelessWidget {
  form({super.key, required this.formtext});

  String? formtext;
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      height: height / 4,
      child: Text(
        '${formtext}',
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'Comfortaa-VariableFont_wght',
          letterSpacing: 1,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
