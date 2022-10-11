
import 'package:elearning/Models/course.dart';
import 'package:elearning/screens/details/wdget/course_Description.dart';
import 'package:elearning/screens/details/wdget/course_progress.dart';
import 'package:elearning/screens/details/wdget/customAppBar.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Course course;

   DetailsPage(this.course);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(course),
            CourseDescription(course),
            CourseProgress()
          ],
        ),
      ),
    );
  }
}
