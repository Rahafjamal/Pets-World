import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ant_design_flutter/ant_design_flutter.dart' as ant;

class CartSliderView extends StatefulWidget {
  CartSliderView({super.key, required this.Data});
  var Data;

  @override
  State<CartSliderView> createState() => _CartSliderViewState();
}

class _CartSliderViewState extends State<CartSliderView> {
  @override
  Widget build(BuildContext context) {
    if(widget.Data == null){
      return const Center(child: CircularProgressIndicator());
    }
    List Data = widget.Data['animals'];
    var pagination =widget.Data['pagination'];
    return SingleChildScrollView(
      child: Column(
      children: [
        Container(
            width: double.infinity,
            height: 400,
            child: CarouselSlider.builder(
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  height: 320,
                  scrollDirection: Axis.vertical,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: false,
                ),
                itemCount: Data.length,
                itemBuilder: (context, index, realIndex) {
                  return ant.Card(
                    title: Text(Data[index]['name']),
                    extra: Text(Data[index]['gender']),
                    hoverable: true,
                    size: ant.Size.large,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.network(
                          Data[index]['photos'][0]['medium'],
                          height: 200,
                          width: 280,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  );
                })),
        
        Container(
         child:ant.Button(
           type: ant.ButtonType.primary,
           onClick: () {
            // open modal for pagination
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                  title: const Text("Pagination"),
                  content: ant.Pagination(
                    defaultCurrent: pagination['current_page'],
                    total: pagination['total_count'],
                    pageSize: 50,
                    onChange: (page, pageSize) {
                      print(page);
                      print(pageSize);
                    },
                  ),
                  actions: [
                    ant.Button(
                      type: ant.ButtonType.primary,
                      onClick: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("Close"),
                    ),
                  ],
                )
            );
           },
           child: Text('Paginaton ${pagination['current_page']}'),
         ),
        ),
      
      ],
    ),);
  }
}
