import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.green;
  static final ThemeData lighTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary, 
      elevation: 0),
    textButtonTheme: const  TextButtonThemeData(
      style: ButtonStyle()
      ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary, 
      elevation: 0),
     // textButtonTheme: TextButtonThemeData(
       // style: 
      //),
    scaffoldBackgroundColor: Colors.indigo
  );
}