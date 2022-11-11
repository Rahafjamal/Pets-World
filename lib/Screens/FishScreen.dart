// import 'package:final_project/Logic/animalapi.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';

// class FishScreen extends StatefulWidget {
//   const FishScreen({super.key});

//   @override
//   State<FishScreen> createState() => _FishScreenState();
// }

// class _FishScreenState extends State<FishScreen> {
//   @override
//   List Data = [];
//   void initState() {
//     // TODO: implement initState
//     FishApi myobject = FishApi();
//     myobject.get().then((value) {
//       print(value);
//       setState(() {
//         Data = value;
//       });
//     });
//     super.initState();
//   }
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//       child:Html(data: Data[0]['Location'],
//       ),
//       ),
//     );
//   }
// }