import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/core/constant.dart';

class TileCard extends StatelessWidget {
  const TileCard({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: -4),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 16, color: textColor, fontWeight: FontWeight.w600),
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
