import 'package:final_project/Chat/chat.dart';
import 'package:final_project/Screens/drawerScreen.dart';
import 'package:final_project/home/TopHome.dart';
import 'package:final_project/model/HeaderCatScreen.dart';
import 'package:flutter/material.dart';

class AppBarTwo extends StatelessWidget with PreferredSizeWidget {
  const AppBarTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Builder(
        builder: (context) => IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Image.asset(
            "images/R.png",
            width: 30,
          ),
        ),
      ),
      actions: [
        IconButton(
          iconSize: 40,
          icon: const Icon(Icons.search),
          tooltip: 'F',
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
        ),
        IconButton(
          iconSize: 40,
          icon: const Icon(Icons.chat),
          tooltip: 'Open shopping cart',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ChatScreen();
            }));
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
