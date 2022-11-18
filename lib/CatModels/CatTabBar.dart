import 'package:final_project/CatModels/SizeDrop.dart';
import 'package:flutter/material.dart';

class CatTabBar extends StatelessWidget {
  CatTabBar(
      {super.key,
      required this.tabController,
      required this.Data,
      required this.type,
      required this.FilterData});
  TabController tabController;
  Function FilterData;
  var Data;
  String type;
  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: [
        const Text(
          "Typs",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        Text(' '),
        Text(' '),
        Text(' '),
      ],
    );
  }
}
