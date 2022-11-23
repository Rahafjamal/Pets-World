// ignore_for_file: non_constant_identifier_names

import 'package:final_project/CatModels/AppBarTwo.dart';
import 'package:final_project/CatModels/CatListView.dart';
import 'package:final_project/Logic/animalapi.dart';
import 'package:final_project/Logic/containetLeft.dart';
import 'package:final_project/Screens/Drawer_screen.dart';
import 'package:final_project/Screens/drawerScreen.dart';

import 'package:final_project/Logic/containermidle.dart';
import 'package:final_project/model/HeaderCatScreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../CatModels/AppBarOne.dart';

class HorseAdo extends StatefulWidget {
  const HorseAdo({super.key});

  @override
  State<HorseAdo> createState() => _HorseAdoState();
}

class _HorseAdoState extends State<HorseAdo> with TickerProviderStateMixin {
  var Data;
  String type = "cat";
  var storage = FlutterSecureStorage();
  @override
  void initState() {
    // TODO: implement initState
    BetFinderApi myobject = BetFinderApi();

    myobject.get(type, storage).then((value) {
      setState(() {
        Data = value;
      });
    });
    super.initState();
  }

  void FilterData(params, filter) {
    setState(() {
      Data = null;
    });
    FilterAnimal object = FilterAnimal();
    object.get(type, storage, filter, params).then((value) {
      setState(() {
        Data = value;
      });
    });
  }

  void PaginationData(page) {
    setState(() {
      Data = null;
    });
    ChangePagination myobject = ChangePagination();
    myobject.get(page, storage, type).then((value) {
      setState(() {
        Data = value;
      });
    });
  }

  void SearchData(search) {
    setState(() {
      Data = null;
    });
    SearchAnimal myobject = SearchAnimal();
    myobject.get(type, storage, search).then((value) {
      setState(() {
        Data = value;
      });
    });
  }

  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    TabController tabController = TabController(length: 4, vsync: this);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: const AppBarTwo(),
          drawer: Drawer_screen(),
          body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Container(
                    width: width,
                    height: height,
                    child: Stack(fit: StackFit.loose, children: [
                      Container(
                        width: width,
                        height: height,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white,
                                Color.fromARGB(255, 156, 182, 255),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          left: width / 10,
                          top: height / 45,
                          height: 4 * height / 45,
                          width: width - (width / 5),
                          child: Align(
                            alignment: Alignment.center,
                            child: Center(
                              child: Text(
                                'What Questions Should You Ask A Horse  Breeder ?',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Comfortaa-VariableFont_wght',
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )),
                      Positioned(
                          left: width / 10,
                          top: 7 * height / 45,
                          height: 10 * height / 45,
                          width: width - (width / 5),
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/hado.jfif'),
                                      fit: BoxFit.contain)))),
                      Positioned(
                          left: width / 10,
                          top: 8 * height / 45 + 10 * height / 45,
                          height: 2.5 * height / 45,
                          width: width - (width / 5),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              child: Text(
                                ' Think about the kind of Horse  who will suit you best :',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Comfortaa-VariableFont_wght',
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )),
                      Positioned(
                          left: width / 10,
                          top: 9 * height / 45 +
                              10 * height / 45 +
                              2.5 * height / 45,
                          width: width - (width / 5),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Before finalizing your decision on a breed, there are lots of questions to ask yourself:',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Comfortaa-VariableFont_wght',
                                  ),
                                ),
                                Container(height: height / 55),
                                Text(
                                  '- Do you have kids? If so, how old are they and how Horse -savvy are they?',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Comfortaa-VariableFont_wght',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(height: height / 55),
                                Text(
                                  '- How many hours a day are you out of the house?',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Comfortaa-VariableFont_wght',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(height: height / 55),
                                Text(
                                  '- Do you have assistance if you are gone for long workdays?',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Comfortaa-VariableFont_wght',
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(height: height / 55),
                                Text(
                                  '- What kind of energy level are you looking for in a Horse ?',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Comfortaa-VariableFont_wght',
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(height: height / 55),
                                Text(
                                  "Once you’ve answered these basic questions, you’ll have a better picture of what characteristics you’re looking for in a Horse . This will help to narrow your search as you research breeds based on your answers.You can learn more about each unique Horse  breed by searching our Petfinder breed guide by name, collection (largest, smartest, and even hairless!), or just browse them all right here. It’s fascinating to discover the history behind each of the countless Horse  breeds. From small to large, each has a unique story.Even if you have your heart set on a particular breed, there’s an additional factor to keep in mind: Every Horse —even a purebred–is distinct and individual.Despite what is considered typical of a breed, you’ll need to remember that every Horse  in the world has their own unique personality (that’s why we love Horse s!) and some may have characteristics that aren’t commonly found within their breed. Luckily, when Horse s arrive with an adoption group, the shelter or rescue will often do a behavioral assessment that can give you more insight about an individual Horse  before you make a decision about adopting. This pre-adoption info can help you find the very best fit for your family and lifestyle.",
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: 12,
                                    fontFamily: 'Comfortaa-VariableFont_wght',
                                    letterSpacing: 0,
                                  ),
                                ),
                                Container(height: height / 55),
                                Text(
                                  ' How to find a young or adult Horse  to suit your home:',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Comfortaa-VariableFont_wght',
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(height: height / 55),
                                Text(
                                  'When adopting an adult Horse , you can specifically look for one whose story matches your needs, such as being friendly with other Horse s, being good with children, and other past history that the rescue or shelter may already have. Having more history on a Horse  will mean fewer surprises for you as an adopter.',
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: 12,
                                    fontFamily: 'Comfortaa-VariableFont_wght',
                                  ),
                                ),
                                Container(height: height / 55),
                                Text(
                                  '',
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: 12,
                                    fontFamily: 'Comfortaa-VariableFont_wght',
                                  ),
                                ),
                                Container(height: height / 5),
                              ],
                            ),
                          )),
                    ]))
              ]))),
    );
  }
}
