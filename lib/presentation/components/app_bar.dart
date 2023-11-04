import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/core/constant.dart';

class ZUSAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ZUSAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Account",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      foregroundColor: textColor,
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.settings,
            color: textColor,
          ),
          onPressed: () {},
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
