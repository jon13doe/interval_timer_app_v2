import 'package:flutter/material.dart';
import 'package:interval_timer_app_v2/features/widgets/input_field.dart';
import 'package:interval_timer_app_v2/features/widgets/one_int_input_row.dart';
import 'package:interval_timer_app_v2/features/widgets/two_inputs_row.dart';
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
    double halfScreenWidth = 0.5 * MediaQuery.of(context).size.width;
    ThemeData theme = Theme.of(context);

    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: medium.padding),
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
                    const Text('Quick start'),
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
              color: Colors.amberAccent,
              height: isOpen ? 400 : 0,
              duration: Duration(milliseconds: duration),
              curve: Curves.linear,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top: medium.padding),
                  child: Column(
                    children: [
                      Text(
                        'sets',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      OneIntInputRow(
                        initValue: 15,
                        maxValue: 99,
                        zeroExist: true,
                        onChange: (newValue) {
                          setState(() {});
                        },
                        numSize: 2 * 16,
                        width: 1.2 * halfScreenWidth,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: InputField(
                          numImput: false,
                          initValue: 'dsfdf',
                          onInput: (newValue) {
                            setState(() {});
                          },
                          fontSize: 16,
                        ),
                      ),
                      TwoInputsRow(
                        initValue: 55,
                        maxValueFirst: 99,
                        maxValueSecond: 60,
                        zeroExist: true,
                        numSize: 2 * 16,
                        onChange: (newValue) {
                          setState(() {});
                        },
                        width: 1.2 * halfScreenWidth,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                        ),
                        child: InputField(
                          numImput: false,
                          initValue: 'dsfdf',
                          onInput: (newValue) {
                            setState(() {});
                          },
                          fontSize: 16,
                        ),
                      ),
                      TwoInputsRow(
                        initValue: 44,
                        maxValueFirst: 99,
                        maxValueSecond: 60,
                        zeroExist: true,
                        onChange: (newValue) {
                          setState(() {});
                        },
                        numSize: 2 * 16,
                        width: 1.2 * halfScreenWidth,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: SizedBox(
                                height: 50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'rty',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(width: 4.0),
                                    const Icon(
                                      Icons.timer_outlined,
                                      size: 16,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Expanded(
                              flex: 1,
                              child: SizedBox(),
                            ),
                            Expanded(
                              flex: 2,
                              child: InkWell(
                                onTap: () {},
                                child: const SizedBox(
                                  height: 50,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.save,
                                        size: 16,
                                      ),
                                      SizedBox(width: 4.0),
                                      Text(
                                        'Save',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          height: 64,
                          width: 192,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.secondary,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.bolt,
                                size: 1.5 * 16,
                                color: Colors.amberAccent,
                                weight: 700,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                child: Text(
                                  'Start',
                                  style: TextStyle(
                                    color: Colors.amberAccent,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 1.5 * 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
