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
            Text("Name : ${Data['name'] ?? ""}"),
            Text('Age : ${Data['age'] ?? ""}'),
            Text('Gender :${Data['gender'] ?? ""}'),
            Text('Size :${Data['size'] ?? ""}'),
            Text('Cost : ${Data['coat'] ?? ""}'),
            Text(
                'primary breeds${Data['breeds']['primary'] != null ? Data['breeds']['primary'].toString() : ""}'),
            Text(
                'Secondary breeds ${Data['breeds']['secondary'] != null ? Data['breeds']['secondary'].toString() : ""}'),
            Text(
                'declawed${Data['attributes']['declawed'] != null ? Data['attributes']['declawed'].toString() : ""}'),
            Text(
                "special_needs${Data['attributes']['special_needs'] != null ? Data['attributes']['special_needs'].toString() : ""}"),
            Text(
                'shots_current${Data['attributes']['shots_current'] != null ? Data['attributes']['shots_current'].toString() : ""}'),
            Text(
                'address1${Data['contact']['address']['address1'] != null ? Data['contact']['address']['address1'].toString() : ""}'),
            Text(
                'address2${Data['contact']['address']['address2'] != null ? Data['contact']['address']['address2'].toString() : ""}'),
            Text(
                'city${Data['contact']['address']['city'] != null ? Data['contact']['address']['city'].toString() : ""}'),
            Text(
                'state${Data['contact']['address']['state'] != null ? Data['contact']['address']['state'].toString() : ""}'),
            Text(
                'postcode${Data['contact']['address']['postcode'] != null ? Data['contact']['address']['postcode'].toString() : ""}'),
            Text(
                'country ${Data['contact']['address']['country'] != null ? Data['contact']['address']['country'].toString() : ""}'),
            Text(
                'Email${Data['contact']['email'] != null ? Data['contact']['email'].toString() : ""}'),
            Text(
                'phone ${Data['contact']['phone'] != null ? Data['contact']['phone'].toString() : ""}'),
            Text(
                "description : ${Data['description'] != null ? Data['description'].toString() : ""}"),
          ],
        ),
      ),
    );
  }
}
