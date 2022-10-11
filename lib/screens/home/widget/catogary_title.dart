import 'package:elearning/constans/color.dart';
import 'package:elearning/utilis/dimentions.dart';
import 'package:flutter/cupertino.dart';
















































class CatogryTitle extends StatelessWidget {
  final String leftText;
  final String rightText;
  // ignore: use_key_in_widget_constructors
  const CatogryTitle(this.leftText, this.rightText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: Dimentions.height20+5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(
            'النشطة',
            style:  TextStyle(
                 fontSize: Dimentions.font20-4, color: kFontLight),
          ),
           Text(
            ' الكورسات ',
            style:  TextStyle(fontSize: Dimentions.font20, color: kFont,fontWeight: FontWeight.bold,),
          ),
             
        ],
      ),
    );
  }
}
