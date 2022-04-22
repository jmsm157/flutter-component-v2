import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.red;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: primary),

    //ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          primary: Colors.red, shape: const StadiumBorder(), elevation: 0.8),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //color primario
      primaryColor: primary,

      //Appbar Theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),

      //TextButton Theme
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

      //floatingActionButton
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary),

      //ElevatedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Colors.red, shape: const StadiumBorder(), elevation: 0.8),
      ),

      //scaffold
      scaffoldBackgroundColor: Colors.black);
}
