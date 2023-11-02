import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/core/constant.dart';
import 'package:flutter_mock_zuscoffee/data/homepage_data.dart';
import 'package:flutter_mock_zuscoffee/presentation/components/balance_card.dart';
import 'package:flutter_mock_zuscoffee/presentation/components/carousel.dart';
import 'package:flutter_mock_zuscoffee/presentation/components/stack_order.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [
            0.7,
            0.9
          ],
              colors: [
            Colors.grey.shade100,
            const Color.fromARGB(255, 201, 238, 255)
          ])),
      child: Column(
        children: [
          CarouselImage(list: carouselList),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Text('Good Afternoon, Azri Shaharin',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: textColor)),
                SizedBox(height: 20),
                BalanceCard(),
                SizedBox(height: 40),
                StackOrder(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
