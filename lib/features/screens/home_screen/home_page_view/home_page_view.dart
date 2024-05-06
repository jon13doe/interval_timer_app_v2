import 'package:flutter/material.dart';

import '../home_page/home_page.dart';
import '../timer_creation_screen/timer_creation_screen.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<HomePageView>
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
    return Stack(
      children: <Widget>[
        PageView(
          controller: _pageViewController,
          onPageChanged: _handlePageViewChanged,
          children: const <Widget>[
            HomePage(),
            TimerCreationScreen(),
          ],
        ),
      ],
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
