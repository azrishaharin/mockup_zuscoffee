import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/core/constant.dart';
import 'package:flutter_mock_zuscoffee/data/profilepage_data.dart';
import 'package:flutter_mock_zuscoffee/presentation/components/base_card.dart';
import 'package:flutter_mock_zuscoffee/presentation/components/listview_card.dart';
import 'package:flutter_mock_zuscoffee/presentation/provider/appbar_state.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<AppBarState>(context, listen: false).setShowAppBar(true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            'assets/images/zuscoffee_image1.png',
                            fit: BoxFit.cover,
                            width: 70,
                            height: 70,
                          )),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Azri Shaharin',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: textColor),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'azri.rain@gmail.com',
                          style: TextStyle(color: textColor),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                BaseCard(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  childWidget: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/images/zuscoffee_image1.png',
                                fit: BoxFit.cover,
                                width: 90,
                                height: 90,
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Balance',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade600)),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'RM',
                                    style: TextStyle(
                                        color: textColor, fontSize: 12),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        '1.50',
                                        style: TextStyle(
                                            color: textColor,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.keyboard_arrow_right,
                                          size: 30, color: Colors.grey.shade500)
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 3, horizontal: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(color: textColor)),
                                  child: const Row(children: [
                                    Icon(
                                      Icons.add,
                                      size: 14,
                                      color: textColor,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'Top Up',
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ]),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: IntrinsicHeight(
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Points',
                                      style: TextStyle(
                                          fontSize: 12, color: textColor),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '36 pts',
                                      style: TextStyle(
                                          fontSize: 20, color: textColor),
                                    )
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                thickness: 2,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Easy Goer',
                                      style: TextStyle(
                                          fontSize: 12, color: textColor),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '0 / 10',
                                          style: TextStyle(
                                            color: textColor,
                                            fontSize: 20,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(Icons.coffee_outlined,
                                            color: textColor, size: 20)
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const ListViewCard(
                  itemList: orderList,
                  title: 'Place an Order',
                ),
                const ListViewCard(
                  itemList: forYou,
                  title: 'Especial For You',
                ),
                const ListViewCard(
                  itemList: needHelp,
                  title: 'Need Help?',
                ),
                const ListViewCard(
                  itemList: legalList,
                  title: 'Legal',
                  sizedBoxh: 0,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "It's Time for a",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "New Age of Coffee",
                      style: TextStyle(
                          color: goldColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Expanded(child: Image.asset('assets/images/coffee_hand.png')),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
