import 'package:final_project/CatModels/CatDetail.dart';
import 'package:final_project/model/HeaderCatScreen.dart';
import 'package:flutter/material.dart';

class CatListView extends StatelessWidget {
   CatListView({super.key, required this.Data, required this.tabController, required this.type,required this.FilterData,required this.PaginationData});
   Function FilterData;
   var Data;
   TabController tabController;
   String type;
    Function PaginationData;

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const HeaderCatScreen(),
      Padding(
          padding: const EdgeInsets.only(left: 15, top: 5),
          child: Row(children: const [
            Text(
              "Welcome in Cat Kingdom ",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ])),
      const SizedBox(height: 20),
      CatDetail(tabController: tabController, Data: Data, type: type,FilterData: FilterData,PaginationData: PaginationData),
    ]);
  }
}

