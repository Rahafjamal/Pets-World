import 'package:final_project/CatModels/CatPagination.dart';
import 'package:final_project/CatModels/CatSpecification.dart';
import 'package:final_project/model/HeaderCatScreen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ant_design_flutter/ant_design_flutter.dart' as ant;

class CartSliderView extends StatelessWidget {
  CartSliderView(
      {super.key,
      required this.defaultImage,
      required this.Data,
      required this.type,
      required this.PaginationData});
  var Data;
  String defaultImage;
  String type;
  Function PaginationData;
  @override
  Widget build(BuildContext context) {
    List NewData = Data['animals'] ?? [];

    return SingleChildScrollView(
      child: Column(
        children: [
          NewData.length > 0
              ? Container(
                  width: double.infinity,
                  height: 500,
                  child: CarouselSlider.builder(
                      options: CarouselOptions(
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        autoPlay: false,
                        height: 600,
                        scrollDirection: Axis.vertical,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: false,
                      ),
                      itemCount: NewData.length,
                      itemBuilder: (context, index, realIndex) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CatSpecification(
                                  Data: NewData[index],
                                ),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: ant.Card(
                              title: Text(
                                NewData[index]['name'] ?? "",
                                style: TextStyle(fontSize: 18),
                              ),
                              extra: Text(
                                NewData[index]['gender'] ?? "",
                                style: TextStyle(fontSize: 18),
                              ),
                              hoverable: true,
                              size: ant.Size.large,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: CatPagination(
                                      PaginationData: PaginationData,
                                      Data: Data,
                                      type: type,
                                    ),
                                  ),
                                  Center(
                                    child: Image.network(
                                      NewData[index]['photos'].length > 0
                                          ? NewData[index]['photos'][0]
                                              ['medium']
                                          : defaultImage,
                                      height: 280,
                                      width: 300,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                )
              : Container(),
        ],
      ),
    );
  }
}
