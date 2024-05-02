import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interval_timer_app_v2/features/screens/home_screen/top_bar/top_bar.dart';

class TimerCreationScreen extends StatefulWidget {
  const TimerCreationScreen({super.key});

  @override
  State<TimerCreationScreen> createState() => _TimerCreationScreenState();
}

class _TimerCreationScreenState extends State<TimerCreationScreen> {
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
            child: Container(
              color: Colors.redAccent,
              child: const CustomScrollView(
                slivers: [
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
