import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/core/constant.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 5,
                offset: const Offset(0, 4))
          ]),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(children: [
              Text(
                "ZUS Balance",
                style: subtitleTextStyle,
              ),
              Spacer(),
              Text(
                "GET STARTED >",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: textColor),
              )
            ]),
            Divider(),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Points", style: subtitleTextStyle),
                      SizedBox(height: 5),
                      Text(
                        "0 pts >",
                        style: TextStyle(color: textColor, fontSize: 16),
                      )
                    ],
                  ),
                ),
                VerticalDivider(),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Easy Goer",
                          style: TextStyle(color: textColor, fontSize: 12),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "0 / 10",
                              style: TextStyle(color: textColor, fontSize: 16),
                            ),
                            Icon(
                              Icons.coffee_outlined,
                              color: textColor,
                              size: 18,
                            )
                          ],
                        )
                      ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
