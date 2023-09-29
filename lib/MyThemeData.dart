import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primarycolor = Color(0XFFB7935F);
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
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(color: primarycolor,size: 30),
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: blackcolor,
          unselectedItemColor: Colors.white,
          backgroundColor: primarycolor));

  static ThemeData darkTheme = ThemeData();
}
