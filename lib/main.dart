import 'package:flutter/material.dart';

import 'screens/welcome_screen/welcome_screen.dart';
import 'utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Hub',
      debugShowCheckedModeBanner: false,
      theme: MyTheme().defaultTheme,
      // home: MyHomeScreen(),
      home: MyWelcomeScreen(),
    );
  }
}
