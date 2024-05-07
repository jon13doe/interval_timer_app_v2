import 'package:flutter/material.dart';
import 'package:interval_timer_app_v2/features/widgets/preset_name_bar.dart';
import 'package:interval_timer_app_v2/theme/sizes.dart';

class AdvencedTimerCreation extends StatefulWidget {
  const AdvencedTimerCreation({super.key});

  @override
  State<AdvencedTimerCreation> createState() => _AdvencedTimerCreationState();
}

class _AdvencedTimerCreationState extends State<AdvencedTimerCreation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750,
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: medium.padding),
            sliver: SliverToBoxAdapter(
              child: Container(
                color: Colors.amber,
                height: 0.75 * kToolbarHeight,
                child: const PresetNameBar(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
