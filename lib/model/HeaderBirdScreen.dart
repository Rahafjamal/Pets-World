import 'package:flutter/material.dart';

class HeaderBirdScreen extends StatelessWidget {
  const HeaderBirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: Image.asset(
                "images/cool.png",
                scale: 3,
              ),
            ),
            Column(
              children: const [
                Padding(
                  padding: const EdgeInsets.only(right: 70, top: 100),
                  child: Text(
                    "Hello Sweety !",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
