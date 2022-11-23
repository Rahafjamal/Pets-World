import 'package:final_project/CatModels/AppBarOne.dart';
import 'package:final_project/Logic/form.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../Screens/Drawer_screen.dart';

class CatSpecification extends StatelessWidget {
  CatSpecification({
    super.key,
    required this.Data,
  });
  var Data;
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    List Photos = Data['photos'] ?? [];
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: CatAppBar(),
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
                        left: width * 0.125,
                        height: height / 2.5,
                        width: width - (width / 4),
                        top: 2 * height / 45,
                        child: Card(
                          shadowColor: Colors.blue[900],
                          elevation: 8,
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: CarouselSlider.builder(
                            options: CarouselOptions(
                              aspectRatio: 2.0,
                              enlargeCenterPage: true,
                              autoPlay: true,
                              height: 320,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enableInfiniteScroll: false,
                            ),
                            itemCount: Photos.length,
                            itemBuilder: (context, index, realIndex) {
                              return Image.network(
                                Photos[index]['full'],
                                fit: BoxFit.contain,
                                width: 1000,
                              );
                            },
                          ),
                        ),
                      ),
                      Positioned(
                          left: width * 0.166,
                          width: width - (width / 3),
                          top: 3 * height / 45 + height / 2.5,
                          child:
                              form(formtext: "Name : ${Data['name'] ?? ""}")),
                      Positioned(
                          left: width * 0.166,
                          height: height / 2.5,
                          width: width - (width / 3),
                          top: 5 * height / 45 + height / 2.5,
                          child: form(formtext: 'Age : ${Data['age'] ?? ""}')),
                      Positioned(
                          left: width * 0.166,
                          height: height / 2.5,
                          width: width - (width / 3),
                          top: 7 * height / 45 + height / 2.5,
                          child: form(
                              formtext: 'Gender :${Data['gender'] ?? ""}')),
                      Positioned(
                          left: width * 0.166,
                          height: height / 2.5,
                          width: width - (width / 3),
                          top: 9 * height / 45 + height / 2.5,
                          child: form(formtext: 'Size :${Data['size'] ?? ""}')),
                      Positioned(
                          left: width * 0.166,
                          height: height / 2.5,
                          width: width - (width / 3),
                          top: 11 * height / 45 + height / 2.5,
                          child:
                              form(formtext: 'Cost : ${Data['coat'] ?? ""}')),
                      Positioned(
                          left: width * 0.166,
                          height: height / 2.5,
                          width: width - (width / 3),
                          top: 13 * height / 45 + height / 2.5,
                          child: form(
                              formtext:
                                  'primary breeds : ${Data['breeds']['primary'] != null ? Data['breeds']['primary'].toString() : ""}')),
                      Positioned(
                          left: width * 0.166,
                          height: height / 2.5,
                          width: width - (width / 3),
                          top: 15 * height / 45 + height / 2.5,
                          child: form(
                              formtext:
                                  'Secondary breeds : ${Data['breeds']['secondary'] != null ? Data['breeds']['secondary'].toString() : ""}')),
                      Positioned(
                          left: width * 0.166,
                          height: height / 2.5,
                          width: width - (width / 3),
                          top: 17 * height / 45 + height / 2.5,
                          child: form(
                              formtext:
                                  'Declawed : ${Data['attributes']['declawed'] != null ? Data['attributes']['declawed'].toString() : ""}')),
                      Positioned(
                          left: width * 0.166,
                          height: height / 2.5,
                          width: width - (width / 3),
                          top: 19 * height / 45 + height / 2.5,
                          child: form(
                              formtext:
                                  'Shots Current :${Data['attributes']['shots_current'] != null ? Data['attributes']['shots_current'].toString() : ""}')),
                      Positioned(
                          left: width * 0.166,
                          height: height / 2.5,
                          width: width - (width / 3),
                          top: 21 * height / 45 + height / 2.5,
                          child: form(
                              formtext:
                                  'address1 :${Data['contact']['address']['address1'] != null ? Data['contact']['address']['address1'].toString() : ""}')),
                      Positioned(
                          left: width * 0.166,
                          height: height / 2.5,
                          width: width - (width / 3),
                          top: 23 * height / 45 + height / 2.5,
                          child: form(
                              formtext:
                                  'Address2 :${Data['contact']['address']['address2'] != null ? Data['contact']['address']['address2'].toString() : ""}')),
                      Positioned(
                          left: width * 0.166,
                          height: height / 2.5,
                          width: width - (width / 3),
                          top: 25 * height / 45 + height / 2.5,
                          child: form(
                              formtext:
                                  'City :${Data['contact']['address']['city'] != null ? Data['contact']['address']['city'].toString() : ""}')),
                      Positioned(
                        left: width * 0.166,
                        height: height / 2.5,
                        width: width - (width / 3),
                        top: 27 * height / 45 + height / 2.5,
                        child: form(
                            formtext:
                                'State :${Data['contact']['address']['state'] != null ? Data['contact']['address']['state'].toString() : ""}'),
                      ),
                      Positioned(
                        left: width * 0.166,
                        height: height / 2.5,
                        width: width - (width / 3),
                        top: 29 * height / 45 + height / 2.5,
                        child: form(
                            formtext:
                                'Postcode : ${Data['contact']['address']['postcode'] != null ? Data['contact']['address']['postcode'].toString() : ""}'),
                      ),
                      Positioned(
                        left: width * 0.166,
                        height: height / 2.5,
                        width: width - (width / 3),
                        top: 31 * height / 45 + height / 2.5,
                        child: form(
                            formtext:
                                'Email :${Data['contact']['email'] != null ? Data['contact']['email'].toString() : ""}'),
                      ),
                      Positioned(
                        left: width * 0.166,
                        height: height / 2.5,
                        width: width - (width / 3),
                        top: 33 * height / 45 + height / 2.5,
                        child: form(
                            formtext:
                                'Phone : ${Data['contact']['phone'] != null ? Data['contact']['phone'].toString() : ""}'),
                      ),
                      Positioned(
                        left: width * 0.166,
                        height: height / 2.5,
                        width: width - (width / 3),
                        top: 33 * height / 45 + height / 2.5,
                        child: form(
                            formtext:
                                'Phone : ${Data['contact']['phone'] != null ? Data['contact']['phone'].toString() : ""}'),
                      ),
                      Positioned(
                        left: width * 0.166,
                        height: height / 2.5,
                        width: width - (width / 3),
                        top: 35 * height / 45 + height / 2.5,
                        child: form(
                            formtext:
                                "Description : ${Data['description'] != null ? Data['description'].toString() : ""}"),
                      ),
                    ]),
                  ),
                ]))));
  }
}
