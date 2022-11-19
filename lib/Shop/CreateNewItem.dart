import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/Shop/AddImage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

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
    var descriptionController = TextEditingController();
    
    void AddItemToCart(image) async {
      print(image);
  
      var fileName = image.path.split('/').last;
      var file = File(image.path);
      var ref = FirebaseStorage.instance.ref().child(fileName);
      var uploadTask = ref.putFile(file);
      var url = await (await uploadTask).ref.getDownloadURL();

      var title = TitleController.text;
      var price = PriceController.text;
      var description = descriptionController.text;
      var data = {
        'title': title,
        'price': price,
        'description': description,
        'image': url,
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
      body: Container(
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
              AddImage(form: form, AddItemToCart: AddItemToCart),
             
            ],
          ),
        ),
      ),
    );
  }
}
