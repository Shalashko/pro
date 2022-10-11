import 'package:elearning/Models/module.dart';
import 'package:elearning/constans/color.dart';
import 'package:flutter/material.dart';

class CourseModule extends StatelessWidget {
  final Module module;

  CourseModule(this.module);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          border: Border.all(color: kAccent, width: 2),
                          shape: BoxShape.circle,
                          color: kAccent),
                      child: Icon(
                        Icons.play_arrow_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                        child: Column(
                      children: List.generate(
                          20,
                          (index) => Expanded(
                                  child: Container(
                                width: 2,
                                color: index % 2 == 0
                                    ? Colors.transparent
                                    : kAccent,
                              ))),
                    ))
                  ],
                ),
              )),
          Flexible(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(color: kPrimary, width: 2),
                  borderRadius: BorderRadius.circular(20),
                  color: kPrimaryLight),
              child: Column(
                
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.record_voice_over_outlined, color: kFontLight),
                      Text(
                        "introduction",
                        style: TextStyle(
                            color: kFontLight, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                   SizedBox(
                    height: 5,
                  ),
                  Text(
                    "never let bad pepole  effect in  you  ,and be ",
                    style: TextStyle(
                        color: kFont.withOpacity(0.7),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        ),
                        textDirection: TextDirection.rtl,
                  ),
                    const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [_BuildButton(Icons.access_time_filled,module.time),
                      const SizedBox(
                    width: 10,
                  ),
                    _BuildButton(Icons.bookmark,module.title)],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _BuildButton(IconData icon, String text) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(color: kPrimary,borderRadius: BorderRadius.circular(20)),
      child: Row(
     
        
        children: [
            Text(text,style: TextStyle(fontWeight: FontWeight.bold,color: kPrimaryDark),) ,  SizedBox(width: 5,),
          Icon(icon,size: 20,color: kPrimaryDark,),
       
        
        ],
      ),
    );
  }
}
