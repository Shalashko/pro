import 'package:elearning/Models/course.dart';
import 'package:elearning/constans/color.dart';
import 'package:flutter/material.dart';

class CourseDescription extends StatelessWidget {
  final Course course;
   CourseDescription(this.course);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
             Text(
              "1h 45 min",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
             SizedBox(
              width: 5,
            ),
         
           
               Icon(Icons.access_time_filled, size: 20, color: kAccent),
                SizedBox(
              width: 2,
            ),
              Container(
              height: 5,
              width: 5,
              decoration:
                  BoxDecoration(color: kFontLight, shape: BoxShape.circle),
            ),
              SizedBox(
              width: 2,
            ),
            Text(
              course.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
                 SizedBox(
              width: 2,
            ),
          
              Icon(Icons.book_online_outlined, size: 20, color: kAccent),
           
          ],
        ),
        SizedBox(height: 15,),
  Text(
          course.title,
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: kFont),
        ),
        SizedBox(height: 15,),
                Text(
          course.description,
          style: TextStyle(
            wordSpacing:2,
              fontSize: 16, fontWeight: FontWeight.bold, color: kFontLight),
        ),
        SizedBox(height: 15,),

      ]),
    );
  }
}
