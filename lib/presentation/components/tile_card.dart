import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/core/constant.dart';

class TileCard extends StatelessWidget {
  const TileCard({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 14, color: textColor),
      ),
      leading: Icon(
        icon,
        color: textColor,
      ),
      trailing: const Icon(
        Icons.chevron_right,
        size: 30,
        color: textColor,
      ),
    );
  }
}
