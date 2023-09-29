import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/ahadeth_tab.dart';
import 'package:islami/quran_tab.dart';
import 'package:islami/sebha_tab.dart';



class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage("assets/images/background.png"),
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "Islami",
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyLarge,
            ), //copywith
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(

            currentIndex: index,
            backgroundColor: MyThemeData.primarycolor,
            onTap: (value) {
              index = value;
              setState(() {});
            },

            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran.png")),
                  label: "قران",
                  backgroundColor: MyThemeData.primarycolor
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/Ahadeth.png")),
                  label: "احاديث",
                  backgroundColor: MyThemeData.primarycolor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: "السبحه",
                  backgroundColor: MyThemeData.primarycolor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: "الراديو",
                  backgroundColor: MyThemeData.primarycolor),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "Setting",
                  backgroundColor: MyThemeData.primarycolor),
            ],

          ),
          body: Taps[index],

        )
      ],
    );
  }

  List<Widget>Taps = [
    QuranTap(),
    AhadethTap(),
    SebhaTab(),
  ];
}
