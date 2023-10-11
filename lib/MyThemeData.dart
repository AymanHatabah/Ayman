import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primarycolor = Color(0XFFB7935F);
  static Color darkprimary = Color(0XFF141A2E);

  static Color yellowcolor = Color.fromRGBO(250, 204, 29, 1);
  static Color blackcolor = Color(0XFF242424);
  static ThemeData lightTheme = ThemeData(
      textTheme: TextTheme(
          bodySmall: GoogleFonts.elMessiri(
              color: Color(
                0xff242424,
              ),
              fontSize: 20,
              fontWeight: FontWeight.w400),
          bodyLarge: GoogleFonts.elMessiri(
              color: blackcolor, fontSize: 30, fontWeight: FontWeight.bold),
          bodyMedium: GoogleFonts.elMessiri(
              color: blackcolor, fontSize: 25, fontWeight: FontWeight.bold)),

      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primarycolor,
          onPrimary: Colors.white,
          secondary: blackcolor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: primarycolor,
          onBackground: blackcolor,
          surface: primarycolor,
          onSurface: Colors.white),
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(color: primarycolor, size: 30),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: blackcolor,
          unselectedItemColor: Colors.white,
          backgroundColor: primarycolor));

  static ThemeData darkTheme = ThemeData(
      textTheme: TextTheme(
          bodySmall: GoogleFonts.elMessiri(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
          bodyLarge: GoogleFonts.elMessiri(
              color: Color.fromRGBO(250, 204, 29, 1), fontSize: 30, fontWeight: FontWeight.bold),
          bodyMedium: GoogleFonts.elMessiri(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold)),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: blackcolor,
          onPrimary: Colors.white,
          secondary: yellowcolor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: darkprimary,
          onBackground: Colors.white,
          surface: darkprimary,
          onSurface: Colors.white),
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white, size: 30),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          selectedItemColor:yellowcolor,
          unselectedItemColor: Colors.white,
          backgroundColor: MyThemeData.darkprimary));
}
