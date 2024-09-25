import 'package:flutter/material.dart';
import 'package:fluttertest/theme/theme.dart';

class StartTitle extends StatelessWidget {
  const StartTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: darkTheme.textTheme.titleMedium,
      textAlign: TextAlign.center,
    );
  }
}
