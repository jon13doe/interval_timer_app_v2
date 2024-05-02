import 'package:flutter/material.dart';
import 'package:interval_timer_app_v2/theme/sizes.dart';

class QuickStartBar extends StatefulWidget {
  const QuickStartBar({super.key});

  @override
  State<QuickStartBar> createState() => _QuickStartBarState();
}

class _QuickStartBarState extends State<QuickStartBar>
    with SingleTickerProviderStateMixin {
  bool isOpen = false;
  int duration = 400;
  late AnimationController _rotationController;

  @override
  void initState() {
    _rotationController = AnimationController(
      duration: Duration(milliseconds: duration),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: medium.padding).copyWith(top: medium.padding),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isOpen = !isOpen;
                    if (isOpen) {
                      _rotationController.forward();
                    } else {
                      _rotationController.reverse();
                    }
                  });
                },
                child: Container(
                  color: Colors.pinkAccent,
                  height: kToolbarHeight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Quick start'),
                      RotationTransition(
                        turns: Tween(begin: 1.0, end: 0.5)
                            .animate(_rotationController),
                        child: const Icon(
                          Icons.keyboard_arrow_down,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AnimatedContainer(
                padding: EdgeInsets.only(bottom: medium.padding),
                color: Colors.amberAccent,
                height: isOpen ? 400 : 0,
                duration: Duration(milliseconds: duration),
                curve: Curves.linear,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(top: medium.padding),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Quick start'),
                            Text('Quick start'),
                          ],
                        ),
                        Text('Set'),
                        //
                        Text('Work'),
                        //
                        Text('Rest'),
                        //
                        // total & save
                        // start
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
