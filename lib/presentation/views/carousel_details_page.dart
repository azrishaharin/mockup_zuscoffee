import 'package:flutter/material.dart';

class CarouselDetailsPage extends StatelessWidget {
  const CarouselDetailsPage(
      {super.key,
      required this.imageColor,
      required this.imageText,
      required this.imageDescription});

  final Color imageColor;
  final String imageText;
  final String imageDescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: imageColor,
            ),
            const SizedBox(height: 20),
            Text(imageText),
            const SizedBox(height: 20),
            Text(imageDescription),
          ],
        ),
      ),
    );
  }
}
