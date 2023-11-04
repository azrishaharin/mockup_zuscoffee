import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/presentation/components/app_bar.dart';
import 'package:flutter_mock_zuscoffee/presentation/components/bottom_nav.dart';
import 'package:flutter_mock_zuscoffee/presentation/provider/appbar_state.dart';
import 'package:flutter_mock_zuscoffee/presentation/provider/routing.dart';
import 'package:flutter_mock_zuscoffee/presentation/views/homepage.dart';
import 'package:flutter_mock_zuscoffee/presentation/views/menupage.dart';
import 'package:flutter_mock_zuscoffee/presentation/views/profilepage.dart';
import 'package:flutter_mock_zuscoffee/presentation/views/rewardspage.dart';
import 'package:provider/provider.dart';

class PageHolder extends StatefulWidget {
  const PageHolder({super.key});

  @override
  State<PageHolder> createState() => _PageHolderState();
}

class _PageHolderState extends State<PageHolder> {
  int selectedIndex = 0;
  final List<Widget> _pageList = const [
    HomePage(),
    MenuPage(),
    RewardsPage(),
    ProfilePage()
  ];

  void onTabChange(int index) {
    context.read<Routing>().onTabChange(index);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppBarState>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: value.showAppBar ? const ZUSAppBar() : null,
          backgroundColor: Colors.white,
          body: _pageList[context.watch<Routing>().currentIndex],
          bottomNavigationBar: BottomNav(
            selectedIndex: context.watch<Routing>().currentIndex,
            onTabChange: (index) => onTabChange(index),
          ),
        );
      },
    );
  }
}
