import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: const Color.fromARGB(255, 241, 222, 222),
    primary: const Color.fromARGB(255, 212, 150, 167),
    secondary: const Color.fromARGB(255, 93, 87, 107),
  )
  //primarySwatch: Colors.blue,
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.blue,
);