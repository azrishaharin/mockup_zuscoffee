import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/core/constant.dart';
import 'package:flutter_mock_zuscoffee/data/menupage_data.dart';
import 'package:flutter_mock_zuscoffee/presentation/provider/appbar_state.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 0;
  final ScrollController _scrollController = ScrollController();

  List<NavigationRailDestination> generateDestinations() {
    List<NavigationRailDestination> destinations = [];
    for (final type in typeList) {
      destinations.add(
        NavigationRailDestination(
          padding: EdgeInsets.zero,
          icon: Icon(
            type['icon'],
            color: Colors.grey[700],
          ),
          selectedIcon: Icon(
            type['icon'],
            color: textColor,
          ),
          label: Text(type['title'], style: const TextStyle(fontSize: 8)),
        ),
      );
    }

    return destinations;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<AppBarState>(context, listen: false).setShowAppBar(false, "");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.15,
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border(
                  bottom: BorderSide(width: 2, color: Colors.grey.shade300))),
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(0, 2))
                          ]),
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: const Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: textColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Select Your Pickup Store",
                            style: TextStyle(color: textColor, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 183, 191, 224),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: MediaQuery.of(context).size.width * 0.45,
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 16),
                        child: const Text(
                          'Delivery',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: textColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: MediaQuery.of(context).size.width * 0.25,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: const Text(
                          'Pickup',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              NavigationRail(
                selectedLabelTextStyle: const TextStyle(color: textColor),
                onDestinationSelected: (value) {
                  setState(() {
                    _selectedIndex = value;
                  });
                  Scrollable.ensureVisible(
                    coffeeList[value]['key'].currentContext!,
                    duration: const Duration(milliseconds: 500),
                  );
                },
                minWidth: 70,
                labelType: NavigationRailLabelType.all,
                destinations: generateDestinations(),
                selectedIndex: _selectedIndex,
              ),
              VerticalDivider(
                thickness: 2,
                color: Colors.grey.shade200,
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    children: [
                      ListView.builder(
                        controller: _scrollController,
                        shrinkWrap: true,
                        itemCount: coffeeList.length,
                        itemBuilder: (context, index) {
                          final coffee = coffeeList[index];
                          return Container(
                            key: coffee['key'],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    coffee['title'],
                                    style: const TextStyle(
                                        fontSize: 18,
                                        color: textColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: coffee['typeList'].length,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      final type = coffee['typeList'][index];
                                      return ListTile(
                                          title: Text(
                                            type['name'],
                                          ),
                                          subtitle: Text(
                                            type['type'],
                                          ));
                                    }),
                                const SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
