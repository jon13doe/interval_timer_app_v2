import 'package:flutter/material.dart';

class SliverText extends StatelessWidget {
  final String text;
  const SliverText({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Text(text),
      ),
    );
  }
}
