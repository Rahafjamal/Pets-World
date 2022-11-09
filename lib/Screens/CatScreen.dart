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
        final Data = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Text('rahaf'),
    ));
  }
}
