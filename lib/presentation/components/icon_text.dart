import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/core/constant.dart';

class IconWithText extends StatelessWidget {
  const IconWithText({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 40,
          color: textColor,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: const TextStyle(overflow: TextOverflow.ellipsis, fontSize: 14),
        )
      ],
    );
  }
}
