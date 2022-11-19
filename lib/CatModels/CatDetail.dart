// ignore_for_file: non_constant_identifier_names

import 'package:final_project/CatModels/CatSlider.dart';
import 'package:final_project/CatModels/CatTabBar.dart';
import 'package:flutter/material.dart';

class CatDetail extends StatelessWidget {

  CatDetail({super.key, required this.tabController,
   required this.Data, required this.type,
   required this.FilterData,required this.defaultImage,
   required this.PaginationData});
  TabController tabController;
  var Data;
  String defaultImage;
  Function FilterData;
  String type;
  Function PaginationData;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[600],
      child: Column(children: [
        CatTabBar(
            tabController: tabController,
            Data: Data,
            type: type,
            FilterData: FilterData),
        const SizedBox(
          height: 10,
        ),
        Data == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : CatSlider(
            defaultImage: defaultImage,
                tabController: tabController,
                Data: Data,
                type: type,
                PaginationData: PaginationData),
      ]),
    );

  }
}
