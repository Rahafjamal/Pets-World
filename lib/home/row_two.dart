import 'package:final_project/Chat/chat.dart';
import 'package:final_project/Logic/containerright.dart';
import 'package:final_project/quiz/writing_view.dart';
import 'package:flutter/material.dart';

class row_two extends StatefulWidget {
  const row_two({super.key});

  @override
  State<row_two> createState() => _row_twoState();
}

class _row_twoState extends State<row_two> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('images/quiz.png'),
                    scale: 3,
                  )),
                )),
            SizedBox(width: 20),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: ContainerRight(
                  title: 'Chat with pets owners',
                  OnTapping: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ChatScreen();
                      },
                    ));
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
