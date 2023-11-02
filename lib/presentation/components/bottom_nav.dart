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
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.coffee),
          label: 'Menu',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.airplane_ticket_outlined),
          label: 'Rewards',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_sharp),
          label: 'Account',
        )
      ],
    );
  }
}
