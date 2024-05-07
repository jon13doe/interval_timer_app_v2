import 'package:flutter/material.dart';

class PresetNameBar extends StatefulWidget {
  const PresetNameBar({
    super.key,
  });

  @override
  State<PresetNameBar> createState() => _PresetNameBarState();
}

class _PresetNameBarState extends State<PresetNameBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.edit,
          ),
          hintText: 'Enter preset name',
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(),
          ),
        ),
      ),
    );
  }
}
