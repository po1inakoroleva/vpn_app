import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xFF0E1326),
  primaryColor: const Color(0xFF4796F2),
  fontFamily: 'Jost',
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 27,
      height: 1.2,
      letterSpacing: 0,
    ),
    titleSmall: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1.2,
      letterSpacing: 0,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 17,
      height: 1.2,
      letterSpacing: 0,
    ),
  ),
);
