import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/presentation/models/carousel_details_args.dart';
import 'package:flutter_mock_zuscoffee/presentation/views/carousel_details_page.dart';

class CarouselImage extends StatelessWidget {
  const CarouselImage({super.key, required this.list});

  final List<Map<String, dynamic>> list;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: CarouselController(),
      items: list
          .map(
            (e) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, CarouselDetailsPage.routeName,
                    arguments: CarouselDetailsArguments(
                        e['image'], e['title'], e['description']));
              },
              child: ClipPath(
                clipper: MyClipper(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(e['image']), fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          )
          .toList(),
      // Image.network(e['image'],
      //     fit: BoxFit.cover, width: MediaQuery.of(context).size.width)
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

class MyClipper extends CustomClipper<Path> {
  Path _getClipPath(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 30);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 30);

    // path.lineTo(size.width, size.height - 20);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  Path getClip(Size size) {
    Path path = _getClipPath(size);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
