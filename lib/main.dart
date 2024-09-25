import 'package:flutter/material.dart';

import 'package:fluttertest/theme/theme.dart';
import 'package:fluttertest/pages/purpose_page.dart';
import 'package:fluttertest/pages/experience_page.dart';
import 'package:fluttertest/pages/sing_up_page.dart';

void main() {
  runApp(const VpnApp());
}

class VpnApp extends StatelessWidget {
  const VpnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      routes: {
        '/': (context) => const PusposePage(),
        '/experience': (context) => const ExperiencePage(),
        '/singup': (context) => const SignUpPage(),
      },
    );
  }
}
