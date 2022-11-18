import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/Shop/constans.dart';
import 'package:final_project/Shop/details_screen.dart';
import 'package:final_project/Shop/product_cart.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
   HomeBody({super.key, required this.type});
   String type;

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _productsStream =
        FirebaseFirestore.instance.collection(type).snapshots();
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                StreamBuilder<QuerySnapshot>(
                  stream: _productsStream,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return const Text('Something went wrong');
                    }

                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return ListView(
                        children: snapshot.data!.docs
                            .map((DocumentSnapshot document) {
                      Map<String, dynamic> data =
                          document.data()! as Map<String, dynamic>;
                        return productCard(
                        press: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return DetailsScreen(
                              product: data,
                              id: document.id,
                              type: type,
                            );
                          })));
                        },
                        product: data,
                      );
                    }).toList());
                  },
                ),

                // ListView.builder(
                //   itemCount: products.length,
                //   itemBuilder: (BuildContext context, int index) {
                //   },
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
