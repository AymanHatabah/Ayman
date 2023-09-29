import 'package:flutter/material.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/ahadeth_model.dart';

class HadethDetails extends StatelessWidget {
  static const String routename = "HadethDetails";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as AhadethModel;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg3.png"), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              args.Tittle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),

        ),
        body:  Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
              side: BorderSide(
                color: Colors.black
              )
            ),
          child:Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(


                children: [
                  Expanded(
                    child:ListView.builder(itemBuilder: (context, index) {
                      return Center(
                        child: Text(args.Content[index]),
                      );
                    },itemCount:args.Content.length ,)
                  ),
                ],
              ),
            ),
          ),
          )
        ),
        
      )
    );
  }
}
