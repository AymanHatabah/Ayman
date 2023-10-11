import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetailsProvider extends ChangeNotifier{

  List<String> verses = [];
  loadFile(int index) async {
    String files = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = files.split("/n");
    print(lines);
    verses = lines;
   notifyListeners();
  }


}