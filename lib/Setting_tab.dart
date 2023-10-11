import 'package:flutter/material.dart';
import 'package:islami/BottomSheet/theming_bottom_sheet.dart';

import 'package:islami/MyThemeData.dart';
import 'package:islami/Provider/My_Provider.dart';
import 'package:provider/provider.dart';

import 'BottomSheet/Language_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  static const String routeName = "Setting";

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("language"),
          InkWell(
            onTap: () {
              ShowLanguageBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 14),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: MyThemeData.primarycolor),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Text(pro.languagecod == "en"
                  ? AppLocalizations.of(context)!.english
                  : AppLocalizations.of(context)!.arabic),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text("theming"),
          InkWell(
            onTap: () {
              ShowThemingBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 14),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: MyThemeData.primarycolor),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Text(
                "lighT",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    ));
  }

  ShowLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: false,
      elevation: 2,
      shape: OutlineInputBorder(
        borderSide: BorderSide(color: MyThemeData.primarycolor),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(12), topLeft: Radius.circular(10)),
      ),
      builder: (context) => LanguageBottomSheet(),
    );
  }

  ShowThemingBottomSheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: false,
        elevation: 2,
        shape: OutlineInputBorder(
          borderSide: BorderSide(color: MyThemeData.primarycolor),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12), topLeft: Radius.circular(10)),
        ),
        builder: (context) => ThemingBottomSheet());
  }
}
