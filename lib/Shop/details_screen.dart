import 'package:final_project/Shop/constans.dart';
import 'package:final_project/Shop/details_body.dart';
import 'package:flutter/material.dart';


class DetailsScreen extends StatelessWidget {
   DetailsScreen({super.key, this.product, this.id, this.type});
  static const String screenRoute = "DetailsSceen";
  final type;
  var product;
  var id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: DetailsAppbar(context),
      body: DetailsBody(product: product, id: id, type: type),
    );
  }

  AppBar DetailsAppbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColor,
      leading: IconButton(
        padding: EdgeInsets.only(
          right: kDefaultPadding,
        ),
        icon: Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
        onPressed: (() {
          Navigator.pop(context);
        }),
      ),
      title: Text(
        "Back",
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}