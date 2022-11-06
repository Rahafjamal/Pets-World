import 'package:final_project/Logic/animalapi.dart';
import 'package:flutter/material.dart';

class CatScreen extends StatefulWidget {
  const CatScreen({super.key});

  @override
  State<CatScreen> createState() => _CatScreenState();
}

class _CatScreenState extends State<CatScreen> {
  List Data = [];
  @override
  void initState() {
    // TODO: implement initState
    BreakingBad myobject = BreakingBad();
    myobject.get().then((value) {
      print(value);
      setState(() {
        Data = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: Data.length,
          itemBuilder: (context, index) {
            return Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(Data[index]["image_link"]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Text( "name : " + Data[index]["name"], style: TextStyle(color: Colors.white), ),
                  Text( "length : " + Data[index]["length"], style: TextStyle(color: Colors.white), ),
                  Text( "family_friendly : " + Data[index]["family_friendly"], style: TextStyle(color: Colors.white), ),
                  // Text('length $Data[index]["length"]'),
                  // Text(Data[index]["origin"]),
                  // Text(Data[index]["family_friendly"]),
                  // Text(Data[index]["shedding"]),
                  // Text(Data[index]["general_health"]),
                  // Text(Data[index]["playfulness"]),
                  // Text(Data[index]["children_friendly"]),
                  // Text(Data[index]["grooming"]),
                  // Text(Data[index]["intelligence"]),
                  // Text(Data[index]["min_weight"]),
                  // Text(Data[index]["max_weight"]),
                  // Text(Data[index]["min_life_expectancy"]),
                  // Text(Data[index]["max_life_expectancy"]),
                ],
              ),
            );
          }),
    );
  }
}
