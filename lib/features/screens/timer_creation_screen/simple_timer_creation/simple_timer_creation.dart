import 'package:flutter/material.dart';
import 'package:interval_timer_app_v2/features/widgets/one_int_input_row.dart';
import 'package:interval_timer_app_v2/features/widgets/preset_name_bar.dart';
import 'package:interval_timer_app_v2/features/widgets/sliver_text.dart';
import 'package:interval_timer_app_v2/features/widgets/two_inputs_row.dart';
import 'package:interval_timer_app_v2/theme/sizes.dart';

class SimpleTimerCreation extends StatefulWidget {
  const SimpleTimerCreation({super.key});

  @override
  State<SimpleTimerCreation> createState() => _SimpleTimerCreationState();
}

class _SimpleTimerCreationState extends State<SimpleTimerCreation> {
  @override
  Widget build(BuildContext context) {
    double height = 0.75 * kToolbarHeight;
    double inputFormWidth = 0.55 * MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: EdgeInsets.all(medium.padding),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  height: 0.75 * kToolbarHeight,
                  color: Colors.amberAccent,
                  child: const PresetNameBar(),
                ),
              ),
              const SliverText(text: 'Prepare'),
              SliverToBoxAdapter(
                child: TwoInputsRow(
                  initValue: 90,
                  maxValueFirst: 99,
                  maxValueSecond: 60,
                  numSize: height,
                  zeroExist: true,
                  onChange: (newValue) {},
                  width: inputFormWidth,
                ),
              ),
              const SliverText(text: 'Set'),
              SliverToBoxAdapter(
                child: OneIntInputRow(
                  initValue: 5,
                  maxValue: 99,
                  numSize: height,
                  zeroExist: false,
                  onChange: (newValue) {},
                  width: inputFormWidth,
                ),
              ),
              const SliverText(text: 'Work'),
              SliverToBoxAdapter(
                child: TwoInputsRow(
                  initValue: 90,
                  maxValueFirst: 99,
                  maxValueSecond: 60,
                  numSize: height,
                  zeroExist: true,
                  onChange: (newValue) {},
                  width: inputFormWidth,
                ),
              ),
              const SliverText(text: 'Rest'),
              SliverToBoxAdapter(
                child: TwoInputsRow(
                  initValue: 90,
                  maxValueFirst: 99,
                  maxValueSecond: 60,
                  numSize: height,
                  zeroExist: true,
                  onChange: (newValue) {},
                  width: inputFormWidth,
                ),
              ),
              const SliverText(text: 'Cooldown'),
              SliverToBoxAdapter(
                child: TwoInputsRow(
                  initValue: 90,
                  maxValueFirst: 99,
                  maxValueSecond: 60,
                  numSize: height,
                  zeroExist: true,
                  onChange: (newValue) {},
                  width: inputFormWidth,
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 0.5 * kToolbarHeight
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.amberAccent,
            height: 0.5 * kToolbarHeight,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Total: '),
              ],
            ),
          ),
        )
      ],
    );
  }
}
