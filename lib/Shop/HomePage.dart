import 'package:final_project/Shop/CreateNewItem.dart';
import 'package:final_project/Shop/constans.dart';
import 'package:final_project/Shop/home_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreateNewFile()),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: kPrimaryColor,
      ),
      backgroundColor: kPrimaryColor,
      appBar: homeAppbar(),
      body: HomeBody(),
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