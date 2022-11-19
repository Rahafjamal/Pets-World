import 'dart:io';

import 'package:final_project/Screens/Login_screen.dart';
import 'package:final_project/home/Home.dart';
import 'package:flutter/material.dart';

import '../CatModels/SizeDrop.dart';

class DrawerScreen extends StatelessWidget {
  DrawerScreen(
      {super.key,
      required this.Data,
      required this.FilterData,
      required this.type,
      required this.SearchData,});

  Function FilterData;
  String type;
  var Data;
  Function SearchData;

  @override
  Widget build(BuildContext context) {
    var SearchController = TextEditingController();

    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.topLeft,
                width: 150,
                height: 55,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 1,
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: SizeDrop(
                  FilterData: FilterData,
                  Data: Data,
                  Filter: const ["Size", "Small", "Medium", "Large"],
                  value: "Size",
                  type: type,
                  params: "size",
                ),
              ),
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.topLeft,
                width: 150,
                height: 55,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 1,
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: SizeDrop(
                  FilterData: FilterData,
                  Data: Data,
                  Filter: const ["Age", "Baby", "Young", "Adult", "Senior"],
                  value: "Age",
                  type: type,
                  params: "age",
                ),
              ),
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.topLeft,
                width: 150,
                height: 55,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 1,
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: SizeDrop(
                  FilterData: FilterData,
                  Data: Data,
                  Filter: const ['Gender', 'Female', 'Male'],
                  value: "Gender",
                  type: type,
                  params: "gender",
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(children: [
                  TextFormField(
                    controller: SearchController,
                    decoration: const InputDecoration(
                      label: Text(
                        " What you want ... ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 2,
                      ),
                      hintText: "search here",
                      hintStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  ElevatedButton(
              onPressed: () {
                SearchData(SearchController.text);
                },
              child: const Text("Add"),
            ),
                  ],),
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
