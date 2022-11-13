import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CatSpecification extends StatelessWidget {
  CatSpecification({
    super.key,
    required this.Data,
  });
  var Data;

  @override
  Widget build(BuildContext context) {
    print(Data['contact']);
    List Photos = Data['photos'] ?? [];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder(
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
                return Container(
                  child: Image.network(Photos[index]['medium'] ?? ""),
                );
              },
            ),
            Text(Data['name'] ?? ""),
            Text(Data['age'] ?? ""),
            Text(Data['gender'] ?? ""),
            Text(Data['size'] ?? ""),
            Text(Data['coat'] ?? ""),
            Text(Data['breeds']['primary'].toString() ?? ""),
            Text(Data['breeds']['secondary'].toString() ?? ""),
            Text(Data['breeds']['mixed'].toString() ?? ""),
            Text(Data['breeds']['unknown'].toString() ?? ""),
            Text(Data['colors']['primary'].toString() ?? ""),
            Text(Data['colors']['secondary'].toString() ?? ""),
            Text(Data['colors']['tertiary'].toString() ?? ""),
            Text(Data['environment']['children'].toString() ?? ""),
            Text(Data['environment']['dogs'].toString() ?? ""),
            Text(Data['environment']['cats'].toString() ?? ""),
            Text(Data['attributes']['spayed_neutered'].toString() ?? ""),
            Text(Data['attributes']['house_trained'].toString() ?? ""),
            Text(Data['attributes']['declawed'].toString() ?? ""),
            Text(Data['attributes']['special_needs'].toString() ?? ""),
            Text(Data['attributes']['shots_current'].toString() ?? ""),
            Text(Data['contact']['address']['address1'] ?? ""),
            Text(Data['contact']['address']['address2'] ?? ""),
            Text(Data['contact']['address']['city'] ?? ""),
            Text(Data['contact']['address']['state'] ?? ""),
            Text(Data['contact']['address']['postcode'] ?? ""),
            Text(Data['contact']['address']['country'] ?? ""),
            Text(Data['contact']['email'] ?? ""),
            Text(Data['contact']['phone'] ?? ""),
            Text(Data['description'] ?? ""),
          ],
        ),
      ),
    );
  }
}
