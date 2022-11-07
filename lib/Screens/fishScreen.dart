import 'package:final_project/Logic/animalapi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Fish extends StatefulWidget {
  const Fish({super.key});

  @override
  State<Fish> createState() => _FishState();
}

class _FishState extends State<Fish> {
  List Data = [];
  @override
  void initState() {
    // TODO: implement initState
    FishApi myobject = FishApi();
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
    return Scaffold(body:
      // body: ListView.builder(
      //     itemCount: Data.length,
      //     itemBuilder: (context, index) {
      //       return Container(
      //         height: 200,
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //             image:
      //                 NetworkImage(Data[index]['Image Gallery'][index]["src"]),
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //         child: Column(
      //           children: [
                  // Text Html(data:
                  //    Data[index]["Loction"].toString(),
                  //   // style: TextStyle(color: Colors.white),
                  // ),
                  // Text( "length : " + Data[index]["length"].toString(), style: TextStyle(color: Colors.white), ),
                  // Text( "family_friendly : " + Data[index]["family_friendly"]., style: TextStyle(color: Colors.white), ),
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
          //         // Text(Data[index]["max_life_expectancy"]),
          //       ],
          //     ),
          //   );
          // }),
       Column(
        children: [
          Container(
            child:Html(data: Data[0]['Location'],)),

           Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(Data [1]['Image Gallery'][3]["src"]),
                    fit: BoxFit.cover,
                  ),
                ),
          )
        ],

      ),);
    ;
  }
}
