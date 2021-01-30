import 'package:flutter/material.dart';

class MyTheme {
  get defaultTheme => ThemeData(
        fontFamily: "Impact",
        primaryColor: Colors.black,
        textTheme: TextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}
