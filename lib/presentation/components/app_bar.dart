import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/core/constant.dart';

class ZUSAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ZUSAppBar({super.key, this.title = "", this.hasIcon = false});

  final String title;
  final bool hasIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      foregroundColor: textColor,
      backgroundColor: Colors.white,
      actions: hasIcon
          ? [
              IconButton(
                icon: const Icon(
                  Icons.settings,
                  color: textColor,
                ),
                onPressed: () {},
              )
            ]
          : [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
