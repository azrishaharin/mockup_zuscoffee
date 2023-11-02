import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/core/constant.dart';

class BulletContainer extends StatelessWidget {
  const BulletContainer(
      {super.key,
      required this.text,
      this.borderColor = Colors.transparent,
      this.bulletTextColor = Colors.white,
      this.backgroundColor = textColor});

  final String text;
  final Color? bulletTextColor;
  final Color? backgroundColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          color: backgroundColor,
          border: Border.all(color: borderColor!)),
      child: Text(
        text,
        style: TextStyle(color: bulletTextColor),
      ),
    );
  }
}
