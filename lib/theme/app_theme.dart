import 'package:flutter/material.dart';

class AppTheme {
   static const Color primary = Colors.cyan;
   static final ThemeData lightTheme = ThemeData.light().copyWith( 
   
    primaryColor: Colors.cyan,
          // Template appbar
          appBarTheme: const AppBarTheme(
            color: Colors.cyan,
          ),
          listTileTheme: const ListTileThemeData(
            iconColor: Colors.blue,
          )
        );
}