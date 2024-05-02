import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interval_timer_app_v2/features/screens/home_screen/home_page_view/Home_page_view.dart';

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
          const SizedBox(
            height: kToolbarHeight,
            child: TopBar(),
          ),
          Flexible(
            child: HomePageView(),
          ),
        ],
      ),
    );
  }
}