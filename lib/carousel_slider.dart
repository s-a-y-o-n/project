import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Carousel_slider1(),
  ));
}

class Carousel_slider1 extends StatelessWidget {
  var images = [
    "https://images.unsplash.com/photo-1698923211993-2eede38c391a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8fA%3D%3D",
    "https://plus.unsplash.com/premium_photo-1699389000894-8e99c0e31bf3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHx8",
    "https://images.unsplash.com/photo-1682687220211-c471118c9e92?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHx8",
    "https://images.unsplash.com/photo-1682685797088-283404e24b9d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHx8",
    "https://plus.unsplash.com/premium_photo-1683141316518-70595b251f01?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHx8"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
          items: List.generate(
              5,
              (index) => Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(images[index]),fit: BoxFit.fill,)),
                  )),
          options: CarouselOptions(
            autoPlay: true,
            height: double.infinity,
            viewportFraction: .9,
            initialPage: 1,
            aspectRatio: 16 / 9,
            enableInfiniteScroll: true,
            autoPlayInterval: Duration(seconds: 3),autoPlayCurve: Curves.decelerate,

          )),
    );
  }
}
