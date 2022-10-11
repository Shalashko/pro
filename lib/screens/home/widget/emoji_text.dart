import 'package:elearning/constans/color.dart';
import 'package:elearning/utilis/dimentions.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter/material.dart";

class EmojiText extends StatelessWidget {
  const EmojiText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(Dimentions.height20 + 5),
        alignment: Alignment.topRight,
        child: RichText(
          text: TextSpan(children: [
            TextSpan(text: ' *', style: TextStyle(fontSize: Dimentions.font26)),
            TextSpan(
                text: 'تعلم عزيزي',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Dimentions.font26,
                    color: kFont)),
          ]),
        ));
  }
}
