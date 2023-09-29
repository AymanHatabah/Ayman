import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Hadeth_Details.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/ahadeth_model.dart';

class AhadethTap extends StatefulWidget {
  @override
  State<AhadethTap> createState() => _AhadethTapState();
}

class _AhadethTapState extends State<AhadethTap> {
  List<AhadethModel> AllAhadeth = [];

  @override
  Widget build(BuildContext context) {
   if(AllAhadeth.isEmpty)
     LoadAhadeth();



    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Image.asset("assets/images/ahadeth_image.png"),
          Divider(
            color: MyThemeData.primarycolor,
            thickness: 3,
            endIndent: 0,
            indent: 0,
          ),







          Text(
            "Ahadeth",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Divider(
            color: MyThemeData.primarycolor,
            thickness: 3,
            endIndent: 0,
            indent: 0,
          ),


          Expanded(

            child: ListView.separated(separatorBuilder: (context, index) => Divider(
              thickness: 5,
              endIndent: 40,
              indent: 40,
            ),
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HadethDetails.routename,
                          arguments:AllAhadeth[index]
                      );
                    },
                    child: Center(child: Text(AllAhadeth[index].Tittle)));
              },
              itemCount: AllAhadeth.length,
            ),
          )
        ],
      ),
    );
  }

  void LoadAhadeth(){
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeth) {

      List<String> AhadethList = ahadeth.split("#");
      for (int i = 0; i < AhadethList.length; i++) {
        String HadethOne = AhadethList[i];
        List<String> HadethOneLines = HadethOne.trim().split("\n");
        String tittle = HadethOneLines[0];
        HadethOneLines.removeAt(0);
        List<String> Content = HadethOneLines;
        AhadethModel ahadethmodel = AhadethModel(tittle, Content);
        print(ahadethmodel.Tittle);
        print(i);

       AllAhadeth.add(ahadethmodel);
       setState(() {

       });
      }
    }).catchError((e) {
      print(e.toString());
    });
  }
}
