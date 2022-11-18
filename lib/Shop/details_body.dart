import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/Shop/constans.dart';
import 'package:final_project/Shop/product_image.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  DetailsBody({super.key, this.product, this.id, this.type});
  var product;
  var id;
  var type;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: IconButton(
              alignment: Alignment.topRight,
              onPressed: (() {
                FirebaseFirestore.instance
                    .collection(type)
                    .doc(id)
                    .delete()
                    .then((value) =>  Navigator.pop(context));
              }),
              icon: Icon(Icons.delete)),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 1.5,
          ),
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: ProductImage(
                      Tag: "${product!['title']}",
                      image: "${product!['image']}",
                      size: size)),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: kDefaultPadding,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding / 2,
                ),
                child: Text(
                  "${product!['title']}",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(
                "Price: ${product['price']}\$",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: kSecondaryColor,
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
