import 'package:final_project/CatModels/CatAppBar.dart';
import 'package:final_project/CatModels/CatListView.dart';
import 'package:final_project/Logic/animalapi.dart';
import 'package:final_project/Screens/drawerScreen.dart';
import 'package:flutter/material.dart';

class CatScreen extends StatefulWidget {
  const CatScreen({super.key});

  @override
  State<CatScreen> createState() => _CatScreenState();
}

class _CatScreenState extends State<CatScreen> with TickerProviderStateMixin {
  var Data;
  @override
  void initState() {
    // TODO: implement initState
    BetFinderApi myobject = BetFinderApi();
    myobject.get().then((value) {
      setState(() {
        // splice first 10 items
        Data = value;
      });
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 5, vsync: this);
    return Scaffold(
      appBar: const CatAppBar(),
      drawer: DrawerScreen(),
      body: CatListView(
        tabController: _tabController,
        Data: Data,
      ),
    );
  }
}
