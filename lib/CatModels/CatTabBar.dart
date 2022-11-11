import 'package:flutter/material.dart';

class CatTabBar extends StatefulWidget {
  CatTabBar({super.key, required this.tabController});
  TabController tabController;

  @override
  State<CatTabBar> createState() => _CatTabBarState();
}

class _CatTabBarState extends State<CatTabBar> {
  List persons = ["1 ", "2 ", "2-6 "];
  String myselcteditem = "1 ";
  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: widget.tabController,
      tabs: [
        const Text(
          "Tybs",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const Text(
          "Tybs",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const Text(
          "Tybs",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const Text(
          "Tybs",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        DropdownButton(
            value: myselcteditem,
            items: persons
                .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(
                      "$e",
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.brown[700],
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'DancingScript'),
                    )))
                .toList(),
            onChanged: ((val) {
              setState(() {
                myselcteditem = val.toString();
              });
            })),
      ],
    );
  }
}
