import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  const BaseCard(
      {super.key, required this.childWidget, this.padding = EdgeInsets.zero});

  final Widget childWidget;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 2,
                // offset: const Offset(0, 4),
              )
            ]),
        padding: padding,
        width: MediaQuery.of(context).size.width,
        child: childWidget);
  }
}
