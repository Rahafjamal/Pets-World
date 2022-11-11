import 'package:final_project/CatModels/CartSliderView.dart';
import 'package:flutter/material.dart';

class CatSlider extends StatelessWidget {
  CatSlider({super.key, required this.tabController, required this.Data});
  TabController tabController;
  var Data;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      width: double.infinity,
      height: 510,
      child: TabBarView(
        controller: tabController,
        children: [
          CartSliderView(
            Data: Data,
          ),
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
