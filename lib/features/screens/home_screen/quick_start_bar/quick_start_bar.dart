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
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(medium.padding),
              child: InkWell(
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
                  color: Colors.amberAccent,
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
            ),
            AnimatedContainer(
              color: Colors.amberAccent,
              height: isOpen ? 400 : 0,
              duration: Duration(milliseconds: duration),
              curve: Curves.linear,
              child: SingleChildScrollView(
                child: Column(
                  children: [
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
          ],
        ),
      ),
    );
  }
}
