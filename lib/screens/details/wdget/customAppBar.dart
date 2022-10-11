import 'package:elearning/Models/course.dart';
import 'package:elearning/constans/color.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Course course;
  CustomAppBar(this.course);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 300,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: const Radius.circular(40)),
                  child: Image.asset(
                    course.imUrl,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
            ],
          ),
          Positioned(
              bottom: 0,
              left: 40,
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                height: 50,
                width: 110,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: kAccent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: const Text("ابدأالأن"),
                ),
              )),
               Positioned(
                  top: MediaQuery.of(context).padding.top,
                  left: 25,
                  child: Container(
                    height: 50,
                    width: 50,
                    // padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      iconSize: 20  ,
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  )),
                       Positioned(
                  top: MediaQuery.of(context).padding.top,
                  right: 25,
                  child: Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.book_outlined,
                        color: Colors.white,
                      ),
                      iconSize: 20  ,
                      onPressed: () {},
                    ),
                  )),
        ],
      ),
    );
  }
}
