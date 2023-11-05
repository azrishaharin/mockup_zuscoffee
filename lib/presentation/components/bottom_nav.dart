import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/core/constant.dart';

class BottomNav extends StatelessWidget {
  const BottomNav(
      {super.key, required this.onTabChange, required this.selectedIndex});

  final void Function(int)? onTabChange;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      type: BottomNavigationBarType.fixed,
      iconSize: 30,
      selectedFontSize: 12,
      selectedItemColor: textColor,
      unselectedItemColor: Colors.grey,
      onTap: (index) => onTabChange!(index),
      items: [
        BottomNavigationBarItem(
          icon: Image.asset("assets/images/zus_logo_inactive.png", width: 30),
          label: 'Home',
          activeIcon: Image.asset("assets/images/zus_logo.png", width: 30),
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.coffee),
          label: 'Menu',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.airplane_ticket_outlined),
          label: 'Rewards',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_sharp),
          label: 'Account',
        )
      ],
    );
  }
}
