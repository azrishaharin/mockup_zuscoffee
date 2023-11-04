import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/core/constant.dart';
import 'package:flutter_mock_zuscoffee/presentation/components/base_card.dart';
import 'package:flutter_mock_zuscoffee/presentation/components/bullet_container.dart';

class StackOrder extends StatelessWidget {
  const StackOrder({super.key, required this.onTap});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          BaseCard(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
            childWidget: Column(children: [
              const Text(
                "You will Pickup Your Order At",
                style: subtitleTextStyle,
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.store_outlined,
                    color: textColor,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Select Your Pickup Store",
                    style: TextStyle(color: textColor),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: onTap,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      color: Colors.white,
                      border: Border.all(color: textColor)),
                  child: const Text(
                    "ORDER NOW",
                    style: TextStyle(
                        color: textColor, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ]),
          ),
          Positioned(
              top: -20,
              child: Stack(clipBehavior: Clip.none, children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50))),
                  child: const Text(
                    'Delivery',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Positioned(
                    right: 0,
                    child: BulletContainer(
                      text: 'Pickup',
                    ))
              ])),
        ]);
  }
}
