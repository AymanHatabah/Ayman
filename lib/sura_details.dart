import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/Provider/My_Provider.dart';
import 'package:islami/Provider/Sura_Details_Provider.dart';
import 'package:islami/SuraModel.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  @override
  Widget build(BuildContext context) {
    // for hi

    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    return ChangeNotifierProvider(
      create: (context) => SuraDetailsProvider()..loadFile(args.index),
      builder: (context, _) {
        var pro = Provider.of<SuraDetailsProvider>(context);
        var myprov = Provider.of<MyProvider>(context);
        //},)
//    if (pro.verses.isEmpty) {
        //   pro.loadFile(args.index);
        // }
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(myprov.modeapp == ThemeMode.light
                      ? "assets/images/background.png"
                      : "assets/images/bg.png"),
                  fit: BoxFit.cover)),
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                //for hi
                args.name,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: MyThemeData.primarycolor)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      indent: 40,
                      endIndent: 40,
                      thickness: 2,
                      color: MyThemeData.primarycolor,
                    ),
                    itemBuilder: (context, index) {
                      return Center(
                          child: Text(
                        pro.verses[index],
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ));
                    },
                    itemCount: pro.verses.length,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
