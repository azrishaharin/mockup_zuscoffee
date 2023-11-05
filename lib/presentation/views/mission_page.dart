import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/core/constant.dart';
import 'package:flutter_mock_zuscoffee/presentation/components/icon_text.dart';

class MissionPage extends StatelessWidget {
  const MissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          thickness: 8,
          color: Colors.grey[200],
        ),
        const SizedBox(
          height: 20,
        ),
        const Text('How It Works'),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: const IconWithText(
                  title: 'Start Monthly Mission', icon: Icons.ac_unit_rounded),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: const IconWithText(
                  title: 'Follow Mission Instructions',
                  icon: Icons.ac_unit_rounded),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: const IconWithText(
                  title: 'Complete Missions & Earn Points',
                  icon: Icons.ac_unit_rounded),
            ),
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        Divider(
          thickness: 8,
          color: Colors.grey[200],
        )
      ],
    );
  }
}
