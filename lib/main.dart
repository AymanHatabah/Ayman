import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/Hadeth_Details.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/home.dart';
import 'package:islami/sura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) =>  SuraDetails(),
        HadethDetails.routename:(context) => HadethDetails(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme:MyThemeData.darkTheme,
    );
  }
}
