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
      required this.type});

  Function FilterData;
  String type;
  var Data;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Container(
                alignment: Alignment.topLeft,
                width: 150,
                height: 55,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 1,
                    )
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
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
              SizedBox(height: 20),
              Container(
                alignment: Alignment.topLeft,
                width: 150,
                height: 55,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 1,
                    )
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
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
              SizedBox(height: 20),
              Container(
                alignment: Alignment.topLeft,
                width: 150,
                height: 55,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 1,
                    )
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
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
              SizedBox(height: 20),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: TextFormField(
                    decoration: InputDecoration(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
