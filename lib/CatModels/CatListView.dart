import 'package:final_project/CatModels/CatDetail.dart';
import 'package:final_project/model/HeaderCatScreen.dart';
import 'package:flutter/material.dart';

class CatListView extends StatelessWidget {
  CatListView(
      {super.key,
      required this.Data,
      required this.tabController,
      required this.type,
      required this.FilterData,
      required this.PaginationData,
      required this.defaultImage});
  Function FilterData;
  String defaultImage;
  var Data;
  TabController tabController;
  String type;
  Function PaginationData;

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const SizedBox(height: 20),
      CatDetail(
        defaultImage: defaultImage,
          tabController: tabController,
          Data: Data,
          type: type,
          FilterData: FilterData,
          PaginationData: PaginationData),
    ]);
  }
}
