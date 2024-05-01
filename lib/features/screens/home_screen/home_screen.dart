import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interval_timer_app_v2/features/screens/home_screen/timers_list/timers_list.dart';
import 'package:interval_timer_app_v2/theme/sizes.dart';

import 'quick_start_bar/index.dart';
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
      body: CustomScrollView(
        slivers: [
          const TopBar(),
          const QuickStartBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(medium.padding),
              child: Container(
                color: Colors.amberAccent,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Presets'),
                      InkWell(
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(
                              25,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Add custom',
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.alarm_add,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          const TimersList(),
        ],
      ),
    );
  }
}
