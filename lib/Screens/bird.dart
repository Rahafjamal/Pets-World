import 'package:final_project/Logic/animalapi.dart';
import 'package:flutter/material.dart';

class BirdScreen extends StatefulWidget {
  const BirdScreen({super.key});

  @override
  State<BirdScreen> createState() => _BirdScreenState();
}

class _BirdScreenState extends State<BirdScreen> {
  @override
  List Data = [];
  void initState() {
    // TODO: implement initState
    BirdApi myobject = BirdApi();
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
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      Data[index]["photos"][0]['large'].toString()),
                  // fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "name : " + Data[index]["name"],
                    style: TextStyle(color: Colors.black, fontSize: 35),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
