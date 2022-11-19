import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/Shop/AddImage.dart';
import 'package:flutter/material.dart';

class CreateNewFile extends StatelessWidget {
   CreateNewFile({super.key, required this.type});
  String type;
  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }

  @override
  Widget build(BuildContext context) {
    final form = GlobalKey<FormState>();
    var TitleController = TextEditingController();
    var PriceController = TextEditingController();
    var ImageController = TextEditingController();
    var descriptionController = TextEditingController();
    void AddItemToCart() {
      var title = TitleController.text;
      var price = PriceController.text;
      var description = descriptionController.text;
      var data = {
        'title': title,
        'price': price,
        'description': description,
        'image': ImageController.text,
      };
      FirebaseFirestore.instance
          .collection(type)
          .add(data)
          .then((value) => {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Item Added'),
                  ),
                )
              })
          .catchError((error) => {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Error'),
                  ),
                )
              });
    }

    return Scaffold(
    body:Container(
      child: Form(
        key: form,
        child: Column(
          children: [
            TextFormField(
              controller: TitleController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter title';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: "Title",
              ),
            ),
            TextFormField(
              controller: PriceController,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty || !isNumeric(value)) {
                  return 'Please enter price';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: "Price",
              ),
            ),
            TextFormField(
              controller: descriptionController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter description';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: "Description",
              ),
            ),
            TextFormField(
              controller: ImageController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter image';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: "Image",
              ),
            ),
            AddImage(),
            ElevatedButton(
              onPressed: () {
                // AddItemToCart(form);
                if (form.currentState!.validate()) {
                  form.currentState!.save();
                  AddItemToCart();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text("Add"),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
