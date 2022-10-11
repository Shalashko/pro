import 'package:elearning/constans/color.dart';
import 'package:elearning/utilis/dimentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Search_Input extends StatelessWidget {
  const Search_Input({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
              top: Dimentions.height45,
              left: Dimentions.height45,
              child: Container(
                padding: EdgeInsets.all(Dimentions.height10 - 2),
                decoration: BoxDecoration(
                    color: kAccent,
                    borderRadius:
                        BorderRadius.circular(Dimentions.height10 - 2)),
                child: Icon(
                  Icons.search_outlined,
                  size: Dimentions.iconSize24 - 4,
                ),
              )),
          Container(
            padding: EdgeInsets.only(left: Dimentions.height20),
            margin: EdgeInsets.all(Dimentions.height20 + 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimentions.radius20),
              border: Border.all(color: kFontLight.withOpacity(0.3), width: 2),
            ),
            child: TextField(
              textAlign: TextAlign.right,
              cursorColor: kFontLight,
              decoration: InputDecoration(
                  fillColor: kFontLight.withOpacity(0.1),
                  filled: true,
                  contentPadding: EdgeInsets.all(Dimentions.height20 - 2),
                  border: InputBorder.none,
                  hintText: 'ابحث عن اكورس المضل',
                  hintStyle: const TextStyle(color: kFontLight)),
            ),
          ),
        ],
      ),
    );
  }
}
