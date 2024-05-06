import 'package:flutter/material.dart';
import 'package:interval_timer_app_v2/theme/sizes.dart';

import 'quick_start_bar/index.dart';
import 'timers_list/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: CustomScrollView(
        slivers: [
          const QuickStartBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(medium.padding),
              child: Container(
                color: Colors.amberAccent,
                height: kToolbarHeight,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Presets'),
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
