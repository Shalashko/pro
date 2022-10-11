import 'package:elearning/constans/color.dart';
import 'package:elearning/screens/home/widget/active_course.dart';
import 'package:elearning/screens/home/widget/emoji_text.dart';
import 'package:elearning/screens/home/widget/feature_coure.dart';
import 'package:elearning/screens/home/widget/search_input.dart';
import 'package:elearning/utilis/dimentions.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const EmojiText(),
              const Search_Input(),
              FewatueCourse(),
              const ActiveCourse()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: kBackground,
          items: [
            BottomNavigationBarItem(
                label: 'calender',
                icon: Icon(
                  Icons.person,
                  size: Dimentions.iconSize24 - 4,
                )),
            BottomNavigationBarItem(
                label: 'calender',
                icon: Icon(
                  Icons.bookmark,
                  size: Dimentions.iconSize24 - 4,
                )),
            BottomNavigationBarItem(
                label: 'calender',
                icon: Icon(
                  Icons.edit_calendar,
                  size: Dimentions.iconSize24 - 4,
                )),
            BottomNavigationBarItem(
                label: 'home',
                icon: Container(
                  padding:  EdgeInsets.only(bottom: Dimentions.height10-5),
                  decoration: const BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: kAccent, width: 2))),
                  child: const Text(
                    'الرئيسية',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )),
          ],
        ));
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title:  Padding(
        padding: EdgeInsets.only(left: Dimentions.height10, top: Dimentions.height15),
        child: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: kFont,
        ),
      ),
      actions: [
        Stack(
          children: [
            Container(
              margin:  EdgeInsets.only(top: Dimentions.height15, right: Dimentions.height20),
              padding:  EdgeInsets.all(Dimentions.height10-2),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: kFontLight.withOpacity(0.3), width: 2),
                  borderRadius: BorderRadius.circular(15)),
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: kFont,
              ),
            ),
            Positioned(
                top: Dimentions.height15,
                left: Dimentions.height20+5,
                child: Container(
                  height: Dimentions.height10-2,
                  width: 8,
                  decoration: const BoxDecoration(
                      color: kAccent, shape: BoxShape.circle),
                )),
            Container(
              margin:  EdgeInsets.only(top: Dimentions.height15, right: Dimentions.height20),
              padding:  EdgeInsets.all(Dimentions.height10-2),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: kFontLight.withOpacity(0.3), width: 2),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset('assets/images/kiko.jpg'),
            ),
            Positioned(
                top: Dimentions.height15,
                left: Dimentions.height20+5,
                child: Container(
                  height: Dimentions.height10-2,
                  width: 8,
                  decoration: const BoxDecoration(
                      color: kAccent, shape: BoxShape.circle),
                )),
          ],
        )
      ],
    );
  }
}
