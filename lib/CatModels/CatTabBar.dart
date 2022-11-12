import 'package:final_project/CatModels/SizeDrop.dart';
import 'package:flutter/material.dart';

class CatTabBar extends StatelessWidget {
  CatTabBar({super.key, required this.tabController, required this.Data, required this.type,required this.FilterData});
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
          "Tybs",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),

        SizeDrop(
          FilterData:FilterData,
          Data: Data,
          Filter: const["Size","Small", "Medium", "Large"],
          value: "Size",
          type: type,
          params: "size",
        ),
        SizeDrop(
          FilterData:FilterData,
          Data: Data,
          Filter: const["Age","Baby", "Young", "Adult", "Senior"],
          value: "Age",
          type: type,
          params: "age",
        ),
        SizeDrop(
          FilterData:FilterData,
          Data: Data,
          Filter:const ['Gender','Female','Male'],
          value: "Gender",
          type: type,
          params: "gender",
        ),
       
       
      ],
    );
  }
}
