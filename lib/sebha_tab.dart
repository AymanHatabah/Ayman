import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/MyThemeData.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 1;

  double angel = 1;

  String txt = 'سبحان الله';

  int oneHundred = 0;

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
                  child: Text("$counter",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff242424),
                      )),
                ),
              )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: MyThemeData.primarycolor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(width: 1, color: Colors.white))),
            onPressed: () {
              sebhaLogic();
            },
            child: Text(
              txt,
              style: TextStyle(fontSize: 25),
            ),
          )
        ],
      ),
    );
  }

  void sebhaLogic() {
    counter++;
    angel++;
    if (counter > 0 && counter < 33) {
      txt = 'سبحان الله';
    } else if (counter > 33 && counter < 66) {
      txt = 'الحمدالله';
    } else if (counter > 66 && counter < 99) {
      txt = 'لا اله الا الله';
    } else if (counter > 99 && counter <= 100) {
      txt = 'الله اكبر';
      oneHundred++;
      counter = 0;
    }
    setState(() {});
  }
}
