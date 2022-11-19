import 'package:flutter/material.dart';

class HeaderCatScreen extends StatelessWidget {
  const HeaderCatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 5),
                child: Image.asset(
                  "images/cool.png",
                  scale: 4,
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: const EdgeInsets.only(right: 70, top: 100),
                    child: Text(
                      "Hello Sweety !",
                      style: TextStyle(
                        fontFamily: 'Comfortaa-VariableFont_wght',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        letterSpacing: 1,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 60),
            child: Text(
              textAlign: TextAlign.left,
              "Welcome in Cat Kingdom",
              style: TextStyle(
                fontFamily: 'Comfortaa-VariableFont_wght',
                fontSize: 22,
                fontWeight: FontWeight.w900,
                color: Colors.black,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
