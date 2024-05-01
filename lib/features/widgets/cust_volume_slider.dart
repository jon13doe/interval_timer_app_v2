

import 'package:flutter/material.dart';

class VolumeSlider extends StatelessWidget {
  const VolumeSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final settingsProvider = Provider.of<SettingsProvider>(context);
    // double volume = settingsProvider.appSettings.volume;

    return Slider(
      // value: volume,
      value: 1,
      min: 0.0,
      max: 100.0,
      onChanged: (newValue) {
        // settingsProvider.updateVolume(newValue);
      },
    );
  }
}
