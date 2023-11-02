import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/presentation/components/bottom_nav.dart';
import 'package:flutter_mock_zuscoffee/presentation/views/homepage.dart';
import 'package:flutter_mock_zuscoffee/presentation/views/menupage.dart';
import 'package:flutter_mock_zuscoffee/presentation/views/profilepage.dart';
import 'package:flutter_mock_zuscoffee/presentation/views/rewardspage.dart';

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
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pageList[selectedIndex],
      bottomNavigationBar: BottomNav(
        selectedIndex: selectedIndex,
        onTabChange: (index) => onTabChange(index),
      ),
    );
  }
}
