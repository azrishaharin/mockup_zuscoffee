import 'package:flutter/material.dart';
import 'package:flutter_mock_zuscoffee/pageholder.dart';
import 'package:flutter_mock_zuscoffee/presentation/provider/appbar_state.dart';
import 'package:flutter_mock_zuscoffee/presentation/provider/routing.dart';
import 'package:flutter_mock_zuscoffee/presentation/views/carousel_details_page.dart';
import 'package:flutter_mock_zuscoffee/presentation/views/menupage.dart';
import 'package:flutter_mock_zuscoffee/presentation/views/profilepage.dart';
import 'package:flutter_mock_zuscoffee/presentation/views/rewardspage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => Routing()),
      ChangeNotifierProvider(create: (_) => AppBarState()),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const PageHolder(),
        routes: {
          '/menu': (context) => const MenuPage(),
          '/rewards': (context) => const RewardsPage(),
          '/profile': (context) => const ProfilePage(),
          CarouselDetailsPage.routeName: (context) =>
              const CarouselDetailsPage(),
        });
  }
}
