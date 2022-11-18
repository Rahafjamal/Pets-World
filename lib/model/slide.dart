import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'images/1.png',
    title: 'A Cool Way to Get Start ',
    description:
        "All what you need to know or to have for your pet in one application .",
  ),
  Slide(
    imageUrl: 'images/2.png',
    title: 'What our application can do !',
    description:
        "You can test your knowledge in pets,       read, shop, and look for soulotions.",
  ),
  Slide(
    imageUrl: 'images/3.png',
    title: "It's Just the Beginning",
    description: 'We will keep improving our application.',
  ),
];
