import 'package:flutter/material.dart';
import 'package:interval_timer_app_v2/features/widgets/dynm_icon_button.dart';
import 'package:interval_timer_app_v2/features/widgets/volume_slider.dart';
import 'package:interval_timer_app_v2/theme/sizes.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.settings),
            iconSize: medium.iconSize,
            onPressed: () {
              // go to menu
            },
          ),
          const Visibility(
            visible: true,
            replacement: Expanded(
              child: Text('Interval Timer'),
            ),
            child: Expanded(
              child: VolumeSlider(),
            ),
          ),
          DynamicIconButton(
            iconsList: const [
              Icons.volume_up,
              Icons.vibration,
              Icons.volume_off,
            ],
            iconSize: medium.iconSize,
            onStateChange: (index) {
              setState(() {
                // noticeType = index;
                // settingsProvider.appSettings.noticeType = index;
                // settingsProvider.saveSettings();
              });
            },
          ),
        ],
      ),
    );
  }
}
