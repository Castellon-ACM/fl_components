import 'package:flutter/material.dart';

class AppTheme {
   static const Color primary = Colors.cyan;
   static final ThemeData lightTheme = ThemeData.light().copyWith( 
   
    primaryColor: primary,
          // Template appbar
          appBarTheme: const AppBarTheme(
            color: primary,
            titleTextStyle: TextStyle(fontSize: 24),
            iconTheme: IconThemeData(color: Color.fromARGB(255, 12, 76, 128))
          ),
          listTileTheme: const ListTileThemeData(
            iconColor: Colors.blue,
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(foregroundColor: primary)
          ),
          //FloatingActionButtons
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: primary,
            foregroundColor: Color.fromARGB(255, 255, 255, 255),
            elevation: 5,
            shape: StadiumBorder()
          )
        );
}