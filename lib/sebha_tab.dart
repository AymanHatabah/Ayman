import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/MyThemeData.dart';

class SebhaTab extends StatelessWidget {
List<String>txt=["الحمد لله","استغفر الله","لا اله الا الله"];


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            "assets/images/Sebhha.png",
            width: 232,
            height: 234,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "عدد التسبيحات",
            style: GoogleFonts.elMessiri(
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: Color(0xff242424),
            ),
          ),
          SizedBox(height: 30),
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 100,
                width: 100,
                color: Color(0xffB7935F),
                child: Center(
                  child: Text(
                    "30",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff242424),
                    )
                  ),


                ),
              )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(style:ElevatedButton.styleFrom(
            backgroundColor: MyThemeData.primarycolor,

            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
                width: 1,
                color:Colors.white
              )
            ) 

          ),onPressed: (){


          }, child: Text(txt[0],style: TextStyle(
            fontSize: 25
          ),),)
        ],
      ),
    );

    }
    int Count=0;
String increment(String txt){
  for(int i=0;i<=33;i++){
Count+=i;
if(Count!=0){
  return txt="ggg";

}
  }
  return txt;
}

}
