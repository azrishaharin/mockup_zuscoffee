import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/core/constant.dart';
import 'package:flutter_mock_zuscoffee/presentation/provider/appbar_state.dart';
import 'package:flutter_mock_zuscoffee/presentation/views/mission_page.dart';
import 'package:provider/provider.dart';

class RewardsPage extends StatefulWidget {
  const RewardsPage({super.key});

  @override
  State<RewardsPage> createState() => _RewardsPageState();
}

class _RewardsPageState extends State<RewardsPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<AppBarState>(context, listen: false)
          .setShowAppBar(true, "Missions and Rewards");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            onTap: (value) {
              _tabController.animateTo(value);
            },
            indicator: const UnderlineTabIndicator(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              borderSide: BorderSide(color: textColor, width: 4),
              insets: EdgeInsets.symmetric(horizontal: 12),
            ),
            unselectedLabelStyle:
                const TextStyle(fontWeight: FontWeight.normal),
            labelStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            unselectedLabelColor: Colors.grey.shade500,
            indicatorColor: textColor,
            labelColor: textColor,
            tabAlignment: TabAlignment.fill,
            tabs: const [
              Tab(
                text: 'Missions',
              ),
              Tab(
                text: 'Redeem Rewards',
              ),
              Tab(
                text: 'My Rewards',
              )
            ],
            controller: _tabController),
        Divider(
          height: 8,
          thickness: 4,
          color: Colors.grey.shade200,
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              MissionPage(),
              Text("Rewards"),
              Text("Rewards"),
            ],
          ),
        ),
      ],
    );
  }
}
