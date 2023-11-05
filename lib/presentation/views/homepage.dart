import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/core/constant.dart';
import 'package:flutter_mock_zuscoffee/data/homepage_data.dart';
import 'package:flutter_mock_zuscoffee/presentation/components/balance_card.dart';
import 'package:flutter_mock_zuscoffee/presentation/components/base_card.dart';
import 'package:flutter_mock_zuscoffee/presentation/components/carousel.dart';
import 'package:flutter_mock_zuscoffee/presentation/components/stack_order.dart';
import 'package:flutter_mock_zuscoffee/presentation/provider/appbar_state.dart';
import 'package:flutter_mock_zuscoffee/presentation/provider/routing.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<AppBarState>(context, listen: false).setShowAppBar(false, "");
    });
  }

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
            0.8,
            0.9
          ],
              colors: [
            Colors.grey.shade100,
            const Color.fromARGB(255, 208, 236, 249)
          ])),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CarouselImage(list: carouselList),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  const Text('Good Afternoon, Azri Shaharin',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: textColor)),
                  const SizedBox(height: 40),
                  const BalanceCard(),
                  const SizedBox(height: 40),
                  StackOrder(
                    onTap: () {
                      context.read<Routing>().onTabChange(1);
                    },
                  ),
                  const SizedBox(height: 20),
                  const BaseCard(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    childWidget: Text(
                      'Spend *RM30.00 Enjoy Free Delivery.\nTs&Cs Apply >',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: textColor),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  const Text(
                    'Start your day the',
                    style: TextStyle(color: Color.fromARGB(255, 155, 124, 30)),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Text(
                          "CEO",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: textColor),
                        ),
                        Text(
                          "Latte",
                          style: TextStyle(fontSize: 12, color: textColor),
                        )
                      ],
                    ),
                  ),
                  const Text(
                    'Way',
                    style: TextStyle(color: Color.fromARGB(255, 155, 124, 30)),
                  ),
                  Expanded(child: Image.asset('assets/images/coffee_hand.png')),
                ],
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
