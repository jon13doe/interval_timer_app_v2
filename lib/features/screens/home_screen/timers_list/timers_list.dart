import 'package:flutter/material.dart';
import 'package:interval_timer_app_v2/theme/sizes.dart';

class TimersList extends StatefulWidget {
  const TimersList({super.key});

  @override
  State<TimersList> createState() => _TimersListState();
}

class _TimersListState extends State<TimersList> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: 5, (context, index) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: medium.padding)
            .copyWith(bottom: medium.padding),
        child: InkWell(
          onTap: () {},
          child: Stack(
            children: [
              Container(
                height: 0.9 * MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: const Center(
                  child: Text('i'),
                ),
              ),
            ],
          ),
        ),
      );
    }));
  }
}
