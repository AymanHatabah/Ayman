import 'package:flutter/material.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/Provider/My_Provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                provider.ChangeLanguage("en");
              },
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.english,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: provider.languagecod == "en"
                            ? MyThemeData.primarycolor
                            : Colors.blueAccent),
                  ),
                  Spacer(),
                  provider.languagecod == "en"
                      ? Icon(
                          Icons.done,
                          color: provider.languagecod == "en"
                              ? MyThemeData.primarycolor
                              : Colors.blueAccent,
                          size: 35,
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                provider.ChangeLanguage("ar");
              },
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.arabic,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: provider.languagecod == "ar"
                            ? MyThemeData.primarycolor
                            : Colors.blueAccent),
                  ),
                  Spacer(),
                  provider.languagecod == "en"
                      ? SizedBox.shrink()
                      : Icon(
                          Icons.done,
                          size: 35,
                    color: provider.languagecod == "ar"
                        ? MyThemeData.primarycolor
                        : Colors.blueAccent,
                        )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
