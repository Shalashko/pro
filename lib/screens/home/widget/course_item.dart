import 'package:elearning/Models/course.dart';
import 'package:elearning/constans/color.dart';
import 'package:elearning/screens/details/wdget/detailpage.dart';
import 'package:elearning/utilis/dimentions.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  final Course course;
  CourseItem(this.course);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Dimentions.height250,
          width: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimentions.radius20),
              color: kPrimaryLight),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimentions.radius20),
                    topRight: Radius.circular(Dimentions.radius20),
                  ),
                  child: Image.asset(
                    course.imUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(Dimentions.height15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              course.lecture,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 6),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Image.asset(course.imUrl, width: 20),
                          ],
                        ),
                         SizedBox(
                          height: Dimentions.height10/2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '20h 2m',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimentions.font20 - 6,
                                  color: kFontLight),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              height: Dimentions.height10 / 2,
                              width: Dimentions.height10 / 2,
                              decoration: const BoxDecoration(
                                  color: kFontLight, shape: BoxShape.circle),
                            ),
                            Text(
                              course.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimentions.font20 - 4,
                                  color: kFont),
                            ),
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
        Positioned(
          bottom: 60,
          left: Dimentions.height20,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: kAccent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimentions.radius15))),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DetailsPage(course)));
            },
            child: Text('ابدأ'),
          ),
        )
      ],
    );
  }
}
