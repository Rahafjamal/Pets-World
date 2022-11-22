import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri caturl =
    Uri.parse('https://www.franklinvets.co.nz/pets/cats/vaccinations');
final Uri dogurl = Uri.parse(
    'https://www.petmd.com/dog/infographic/basic-vaccine-schedule-dogs');
final Uri birdurl = Uri.parse(
    'https://www.researchgate.net/figure/Vaccination-Schedule-of-Backyard-Chicken_tbl5_326477705');
final Uri horseurl =
    Uri.parse('https://tristatevetservices.com/equine-services');
final Uri rabbiturl = Uri.parse(
    'https://www.researchgate.net/figure/Overview-of-rabbit-vaccinations_tbl1_273327225');
final Uri furryurl = Uri.parse(
    'https://www.researchgate.net/figure/Vaccination-Schedule-of-Backyard-Chicken_tbl5_326477705');

Future<void> catUrl() async {
  if (!await launchUrl(caturl)) {
    throw 'Could not launch $caturl';
  }
}

Future<void> dogUrl() async {
  if (!await launchUrl(dogurl)) {
    throw 'Could not launch $dogurl';
  }
}

Future<void> birdUrl() async {
  if (!await launchUrl(birdurl)) {
    throw 'Could not launch $birdurl';
  }
}

Future<void> horseUrl() async {
  if (!await launchUrl(horseurl)) {
    throw 'Could not launch $horseurl';
  }
}

Future<void> rabbitUrl() async {
  if (!await launchUrl(rabbiturl)) {
    throw 'Could not launch $rabbiturl';
  }
}

Future<void> furryUrl() async {
  if (!await launchUrl(furryurl)) {
    throw 'Could not launch $furryurl';
  }
}

class URLclass extends StatelessWidget {
  URLclass({
    required this.myfunction,
  });

  Function()? myfunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myfunction,
    );
  }
}
