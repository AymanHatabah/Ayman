import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/SuraModel.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    // for hi
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;

    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
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
          child: Card(shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            side: BorderSide(
              color: MyThemeData.primarycolor
            )
          ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  indent: 40,
                endIndent: 40,
                thickness: 2,
                color:MyThemeData.primarycolor,
              ),
                itemBuilder: (context, index) {
                  return Center(
                      child: Text(
                    verses[index],
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ));
                },
                itemCount: verses.length,
              ),
            ),
          ),
        ),
      ),
    );
  }

  loadFile(int index) async {
    String files = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = files.split("/n");
    print(lines);
    verses = lines;
    setState(() {});
  }
}
