import 'package:flutter/material.dart';
import 'package:interval_timer_app_v2/features/widgets/one_int_input_row.dart';
import 'package:interval_timer_app_v2/features/widgets/preset_name_bar.dart';
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

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: medium.padding),
          child: Container(
            height: 0.75 * kToolbarHeight,
            color: Colors.amberAccent,
            child: const PresetNameBar(),
          ),
        ),
        const Text('Prepare'),
        TwoInputsRow(
          initValue: 90,
          maxValueFirst: 99,
          maxValueSecond: 60,
          numSize: height,
          zeroExist: true,
          onChange: (newValue) {},
          width: inputFormWidth,
        ),
        const Text('Sets'),
        OneIntInputRow(
          initValue: 5,
          maxValue: 99,
          numSize: height,
          zeroExist: false,
          onChange: (newValue) {},
          width: inputFormWidth,
        ),
        const Text('Work'),
        TwoInputsRow(
          initValue: 90,
          maxValueFirst: 99,
          maxValueSecond: 60,
          numSize: height,
          zeroExist: true,
          onChange: (newValue) {},
          width: inputFormWidth,
        ),
        const Text('Rest'),
        TwoInputsRow(
          initValue: 90,
          maxValueFirst: 99,
          maxValueSecond: 60,
          numSize: height,
          zeroExist: true,
          onChange: (newValue) {},
          width: inputFormWidth,
        ),
        const Text('Cooldown'),
        TwoInputsRow(
          initValue: 90,
          maxValueFirst: 99,
          maxValueSecond: 60,
          numSize: height,
          zeroExist: true,
          onChange: (newValue) {},
          width: inputFormWidth,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: medium.padding),
              child: const Text('Total: '),
            ),
          ],
        ),
      ],
    );
  }
}
