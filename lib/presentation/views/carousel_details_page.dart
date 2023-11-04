import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/presentation/models/carousel_details_args.dart';

class CarouselDetailsPage extends StatelessWidget {
  static const routeName = '/carousel-details-page';

  const CarouselDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as CarouselDetailsArguments;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(args.image, fit: BoxFit.cover),
          ),
          const SizedBox(height: 20),
          Text(
            args.title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(args.description),
        ],
      ),
    );
  }
}
