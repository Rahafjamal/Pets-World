import 'package:final_project/CatModels/CartSliderView.dart';
import 'package:final_project/Shop/HomePage.dart';
import 'package:flutter/material.dart';

class CatSlider extends StatefulWidget {
  CatSlider(
      {super.key,
      required this.defaultImage,
      required this.tabController,
      required this.Data,
      required this.type,
      required this.PaginationData});
  TabController tabController;
  var Data;
  String defaultImage;
  String type;
  Function PaginationData;

  @override
  State<CatSlider> createState() => _CatSliderState();
}

class _CatSliderState extends State<CatSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      width: double.infinity,
      height: 510,
      child: TabBarView(
        controller: widget.tabController,
        children: [
          CartSliderView(
            defaultImage: widget.defaultImage,
            Data: widget.Data,
            type: widget.type,
            PaginationData: widget.PaginationData,
          ),
          HomeScreen(
            type: widget.type,
          ),
        ],
      ),
    );
  }
}
