import 'package:final_project/Logic/animalapi.dart';
import 'package:flutter/material.dart';

class HorseScreen extends StatefulWidget {
  const HorseScreen({super.key});

  @override
  State<HorseScreen> createState() => _HorseScreenState();
}

class _HorseScreenState extends State<HorseScreen> {
  @override
  List Data = [];
  void initState() {
    // TODO: implement initState
    BetFinderApi myobject = BetFinderApi();
    myobject.get().then((value) {
      setState(() {
        Data = value;
      });
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: Data.length,
          itemBuilder: (context, index) {
            return Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          Data[index]["photos"][0]["medium"].toString()))),
              child: Column(
                children: [
                  Text(
                    " " + Data[index]["name"],
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
