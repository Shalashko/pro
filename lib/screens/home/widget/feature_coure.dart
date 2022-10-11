import 'package:elearning/Models/course.dart';
import 'package:elearning/screens/home/widget/catogary_title.dart';
import 'package:elearning/screens/home/widget/course_item.dart';
import 'package:elearning/utilis/dimentions.dart';
import 'package:flutter/material.dart';

class FewatueCourse extends StatelessWidget {
  final courseList = Course.generateCourse();

   FewatueCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Column(
      children: [
        CatogryTitle('تصفح الكورسات', 'الأن'),
         Container(
            height: Dimentions.pageView,
            child: ListView.separated(
                padding: EdgeInsets.all(25),
                  itemCount: courseList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CourseItem(courseList[index]),
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                      width: 15,
                    )))
      ],
    ));
  }
}
