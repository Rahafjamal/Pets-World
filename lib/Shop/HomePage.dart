import 'package:final_project/Shop/CreateNewItem.dart';
import 'package:final_project/Shop/cart.dart';
import 'package:final_project/Shop/constans.dart';
import 'package:final_project/Shop/home_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.type});
  String type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CreateNewFile(
                          type: type,
                        )),
              );
            },
            child: const Icon(Icons.add),
            backgroundColor: kPrimaryColor,
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cart()),
              );
            },
            child: const Icon(Icons.shopping_bag),
            backgroundColor: kPrimaryColor,
          ),
        ],
      ),
      backgroundColor: kPrimaryColor,
      appBar: homeAppbar(),
      body: HomeBody(
        type: type,
      ),
    );
  }

  AppBar homeAppbar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text(
        "Welcome to Pets store",
        style: GoogleFonts.getFont("Roboto",
            fontWeight: FontWeight.bold, fontSize: 20),
      ),
      centerTitle: false,
      actions: [IconButton(onPressed: (() {}), icon: Icon(Icons.menu))],
    );
  }
}
