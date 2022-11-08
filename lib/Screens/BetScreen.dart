import 'package:final_project/Logic/animalapi.dart';
import 'package:flutter/material.dart';

class BetScreen extends StatefulWidget {
  const BetScreen({super.key});

  @override
  State<BetScreen> createState() => _BetScreenState();
}

class _BetScreenState extends State<BetScreen> {
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
              height: 200,
              child: Column(
                children: [
                  Text(
                    "name : " + Data[index]["name"],
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
