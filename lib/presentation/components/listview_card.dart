import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/core/constant.dart';
import 'package:flutter_mock_zuscoffee/presentation/components/tile_card.dart';

class ListViewCard extends StatelessWidget {
  const ListViewCard(
      {super.key,
      required this.itemList,
      required this.title,
      this.sizedBoxh = 32});

  final List itemList;
  final String title;
  final double sizedBoxh;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(),
        ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final item = itemList[index];
              return TileCard(title: item['title'], icon: item['icon']);
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: itemList.length),
        const Divider(),
        SizedBox(
          height: sizedBoxh,
        )
      ],
    );
  }
}
