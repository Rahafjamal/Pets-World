import 'package:final_project/Logic/animalapi.dart';
import 'package:flutter/material.dart';
import 'package:ant_design_flutter/ant_design_flutter.dart' as ant;

class HorseScreenCard extends StatefulWidget {
  const HorseScreenCard({super.key});

  @override
  State<HorseScreenCard> createState() => _HorseScreenCardState();
}

class _HorseScreenCardState extends State<HorseScreenCard> {
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
    return ListView.builder(
        itemCount: Data.length,
        itemBuilder: (context, index) {
          return ant.Card(
            title: Text(Data[index]['name']),
            extra: Text(Data[index]['gender']),
            hoverable: true,
            size: ant.Size.large,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Image.network(Data[index]['photos'][0]['full'],
                    fit: BoxFit.cover,
                  ),
              ],
            )
          );
        });
  }
}
