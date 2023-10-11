import 'package:flutter/material.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/Provider/My_Provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemingBottomSheet extends StatelessWidget {
  const ThemingBottomSheet({super.key});

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
                provider.ChangeTheme(ThemeMode.dark);
              },
              child: Row(
                children: [
                  Text(
                    "Dark",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color:Theme.of(context).colorScheme.background
                    ),
                  ),
                  Spacer(),
                  provider.modeapp == ThemeMode.dark
                      ? Icon(
                          Icons.done,
                          color: MyThemeData.primarycolor,
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
                provider.ChangeTheme(ThemeMode.light);
              },
              child: Row(
                children: [
                  Text(
                    " Light",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: MyThemeData.primarycolor,
                  ),
                  ),
                  Spacer(),
                  provider.modeapp == ThemeMode.dark
                      ? SizedBox.shrink()
                      : Icon(
                          Icons.done,
                          size: 35,
                          color:MyThemeData.primarycolor
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
