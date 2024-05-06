import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_screen_page_view/home_screen_page_view.dart';
import 'top_bar/index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            height: kToolbarHeight,
            child: TopBar(),
          ),
          Flexible(
            child: HomeScreenPageView(),
          ),
        ],
      ),
    );
  }
}