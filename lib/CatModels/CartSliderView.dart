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
          const HeaderCatScreen(),
          NewData.length > 0
              ? Container(
                  width: double.infinity,
                  height: 400,
                  child: CarouselSlider.builder(
                      options: CarouselOptions(
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        height: 320,
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
                          child: ant.Card(
                            title: Text(NewData[index]['name'] ?? ""),
                            extra: Text(NewData[index]['gender'] ?? ""),
                            hoverable: true,
                            size: ant.Size.large,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.network(
                                  NewData[index]['photos'].length > 0
                                      ? NewData[index]['photos'][0]['medium']
                                      : defaultImage,
                                  height: 200,
                                  width: 280,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                )
              : Container(),
          Container(
            child: CatPagination(
              PaginationData: PaginationData,
              Data: Data,
              type: type,
            ),
          ),
        ],
      ),
    );
  }
}
