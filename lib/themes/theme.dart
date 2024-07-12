import "package:flutter/material.dart";

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
      surface: Color.fromARGB(255, 224, 224, 224),
      primary: Colors.grey.shade200,
      secondary: Colors.white,
      inversePrimary: Color.fromARGB(255, 67, 64, 64)),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade800,
    primary: Colors.grey.shade700,
    secondary: Colors.grey.shade900,
    inversePrimary: Colors.white,
  ),
);