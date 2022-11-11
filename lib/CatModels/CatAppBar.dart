import 'package:flutter/material.dart';

class CatAppBar extends StatelessWidget with PreferredSizeWidget {
  const CatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: const Color.fromARGB(0, 255, 255, 255),
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
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

}
