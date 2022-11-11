import 'package:final_project/CatModels/CatSlider.dart';
import 'package:final_project/CatModels/CatTabBar.dart';
import 'package:flutter/material.dart';

class CatDetail extends StatelessWidget {
  CatDetail({super.key, required this.tabController, required this.Data});
  TabController tabController;
  var Data;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CatTabBar(tabController: tabController),
      const SizedBox(
        height: 10,
      ),
      CatSlider(
        tabController: tabController,
        Data: Data,
      )
    ]);
  }
}
