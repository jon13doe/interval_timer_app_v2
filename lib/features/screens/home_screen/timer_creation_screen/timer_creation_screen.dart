import 'package:flutter/material.dart';

class TimerCreationScreen extends StatefulWidget {
  const TimerCreationScreen({super.key});

  @override
  State<TimerCreationScreen> createState() => _TimerCreationScreenState();
}

class _TimerCreationScreenState extends State<TimerCreationScreen>
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
    return Container(
      // child: 
      // ,
    );
  }

  void _handlePageViewChanged(int currentPageIndex) {
    _tabController.index = currentPageIndex;
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }
}
