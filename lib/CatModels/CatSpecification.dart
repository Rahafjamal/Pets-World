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
                return Image.network(
                  Photos[index]['full'],
                  fit: BoxFit.cover,
                  width: 1000,
                );
              },
            ),
            Text(Data['name'] ?? ""),
            Text(Data['age'] ?? ""),
            Text(Data['gender'] ?? ""),
            Text(Data['size'] ?? ""),
            Text(Data['coat'] ?? ""),
            Text(Data['breeds']['primary'] != null
                ? Data['breeds']['primary'].toString()
                : ""),
            Text(Data['breeds']['secondary'] != null
                ? Data['breeds']['secondary'].toString()
                : ""),
            Text(Data['breeds']['mixed'] != null
                ? Data['breeds']['mixed'].toString()
                : ""),
            Text(Data['breeds']['unknown'] != null
                ? Data['breeds']['unknown'].toString()
                : ""),
            Text(Data['colors']['primary'] != null
                ? Data['colors']['primary'].toString()
                : ""),
            Text(Data['colors']['secondary'] != null
                ? Data['colors']['secondary'].toString()
                : ""),
            Text(Data['colors']['tertiary'] != null
                ? Data['colors']['tertiary'].toString()
                : ""),
            Text(Data['environment']['children'] != null
                ? Data['environment']['children'].toString()
                : ""),
            Text(Data['environment']['dogs'] != null
                ? Data['environment']['dogs'].toString()
                : ""),
            Text(Data['environment']['cats'] != null
                ? Data['environment']['cats'].toString()
                : ""),
            Text(Data['attributes']['spayed_neutered'] != null
                ? Data['attributes']['spayed_neutered'].toString()
                : ""),
            Text(Data['attributes']['house_trained'] != null
                ? Data['attributes']['house_trained'].toString()
                : ""),
            Text(Data['attributes']['declawed'] != null
                ? Data['attributes']['declawed'].toString()
                : ""),
            Text(Data['attributes']['special_needs'] != null
                ? Data['attributes']['special_needs'].toString()
                : ""),
            Text(Data['attributes']['shots_current'] != null
                ? Data['attributes']['shots_current'].toString()
                : ""),
            Text(Data['contact']['address']['address1'] != null
                ? Data['contact']['address']['address1'].toString()
                : ""),
            Text(Data['contact']['address']['address2'] != null
                ? Data['contact']['address']['address2'].toString()
                : ""),
            Text(Data['contact']['address']['city'] != null
                ? Data['contact']['address']['city'].toString()
                : ""),
            Text(Data['contact']['address']['state'] != null
                ? Data['contact']['address']['state'].toString()
                : ""),
            Text(Data['contact']['address']['postcode'] != null
                ? Data['contact']['address']['postcode'].toString()
                : ""),
            Text(Data['contact']['address']['country'] != null
                ? Data['contact']['address']['country'].toString()
                : ""),
            Text(Data['contact']['email'] != null
                ? Data['contact']['email'].toString()
                : ""),
            Text(Data['contact']['phone'] != null
                ? Data['contact']['phone'].toString()
                : ""),
            Text(Data['description'] != null
                ? Data['description'].toString()
                : ""),
          ],
        ),
      ),
    );
  }
}
