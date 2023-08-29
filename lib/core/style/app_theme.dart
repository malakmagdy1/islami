import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      primaryColor: const Color(0xFFB7935F),
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
              fontSize: (30),
              fontWeight: FontWeight.bold,
              color: Colors.black)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xFFB7935F),
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(
            color: Colors.black,
            size: 25,
          ),
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          showSelectedLabels: true,
          unselectedLabelStyle: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.w300),
          showUnselectedLabels: true,
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
            size: 26,
          )),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 38,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black),
        bodyLarge: TextStyle(fontSize: 20, color: Colors.black),
      ),
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Color(0xFFB7935F),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20)))));
  static ThemeData darkTheme = ThemeData(
      primaryColor: Color(0x4C2454BB),
      canvasColor: Color(0xFF907C26),
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
              fontSize: (30),
              fontWeight: FontWeight.bold,
              color: Color(0xFF907C26))),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF141A2E),
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(
            color: Color(0xFF907C26),
            size: 25,
          ),
          selectedItemColor: Color(0xFF907C26),
          selectedLabelStyle: TextStyle(
              color: Color(0xFF907C26),
              fontSize: 20,
              fontWeight: FontWeight.bold),
          showSelectedLabels: true,
          unselectedLabelStyle: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300),
          showUnselectedLabels: true,
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
            size: 26,
          )),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 38,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Color(0xFF907C26)),
        bodyLarge: TextStyle(fontSize: 20, color: Color(0xFF907C26)),
        bodySmall: TextStyle(fontSize: 18, color: Color(0xFF907C26)),
      ),
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Color(0x4C102141),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20)))));
}
