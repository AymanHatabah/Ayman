import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/Hadeth_Details.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/Provider/My_Provider.dart';
import 'package:islami/Provider/Sura_Details_Provider.dart';
import 'package:islami/Radio_Tab.dart';
import 'package:islami/Setting_tab.dart';
import 'package:islami/home.dart';
import 'package:islami/sura_details.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => MyProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(pro.languagecod),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routename: (context) => HadethDetails(),
        RadioTab.routeName: (context) => RadioTab(),
        SettingTab.routeName: (context) => SettingTab(),
      },
      themeMode: pro.modeapp,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}
