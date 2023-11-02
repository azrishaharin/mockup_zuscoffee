import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselImage extends StatelessWidget {
  const CarouselImage({super.key, required this.list});

  final List<Map<String, dynamic>> list;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: CarouselController(),
      items: list
          .map((e) => Image.network(e['image'],
              fit: BoxFit.cover, width: MediaQuery.of(context).size.width))
          .toList(),
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.35,
        viewportFraction: 1.0,
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
      ),
    );
  }
}
