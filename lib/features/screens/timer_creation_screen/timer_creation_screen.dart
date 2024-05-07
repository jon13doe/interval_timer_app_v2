import 'package:flutter/material.dart';

import 'advenced_timer_creation/advenced_timer_creation.dart';
import 'simple_timer_creation/simple_timer_creation.dart';

class TimerCreationScreen extends StatefulWidget {
  const TimerCreationScreen({super.key});

  @override
  State<TimerCreationScreen> createState() => _TimerCreationPageState();
}

class _TimerCreationPageState extends State<TimerCreationScreen>
    with TickerProviderStateMixin {
  late PageController _pageViewController;
  late TabController _tabController;
  int _currentPageIndex = 0;
  late bool _simpleView;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController(initialPage: _currentPageIndex);
    _tabController = TabController(length: 2, vsync: this);
    _simpleView = true;
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: kToolbarHeight,
            width: MediaQuery.of(context).size.width,
            color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_left,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _simpleView = !_simpleView;
                    });
                  },
                  child: Container(
                    height: 35,
                    width: 2 * kToolbarHeight,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: _simpleView ? 2 : 1,
                        color: _simpleView ? Colors.redAccent : Colors.black,
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
                            'Simple',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _simpleView = !_simpleView;
                    });
                  },
                  child: Container(
                    height: 35,
                    width: 2 * kToolbarHeight,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: _simpleView ? 1 : 2,
                        color: _simpleView ? Colors.black : Colors.redAccent,
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
                            'Advenced',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.save,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: _simpleView
                ? const SimpleTimerCreation()
                : const AdvencedTimerCreation(),
          ),
        ],
      ),
    );
  }
}
