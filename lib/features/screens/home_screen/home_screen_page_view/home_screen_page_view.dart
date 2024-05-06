import 'package:flutter/material.dart';
import 'package:interval_timer_app_v2/theme/sizes.dart';

import '../home_page/home_page.dart';
import '../timer_creation_page/timer_creation_page.dart';

class HomeScreenPageView extends StatefulWidget {
  const HomeScreenPageView({super.key});

  @override
  State<HomeScreenPageView> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<HomeScreenPageView>
    with TickerProviderStateMixin {
  late PageController _pageViewController;
  late TabController _tabController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController(initialPage: _currentPageIndex);
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(medium.padding),
      child: PageView(
        controller: _pageViewController,
        onPageChanged: _handlePageViewChanged,
        children: const <Widget>[
          HomePage(),
          TimerCreationPage(),
        ],
      ),
    );
  }

  void _handlePageViewChanged(int currentPageIndex) {
    _tabController.index = currentPageIndex;
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }

  // void _updateCurrentPageIndex(int index) {
  //   _tabController.index = index;
  //   _pageViewController.animateToPage(
  //     index,
  //     duration: const Duration(milliseconds: 400),
  //     curve: Curves.easeInOut,
  //   );
  // }
}
