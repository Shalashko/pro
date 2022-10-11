import 'package:elearning/Models/module.dart';
import 'package:elearning/constans/color.dart';
import 'package:elearning/screens/details/wdget/courseModule.dart';
import 'package:flutter/material.dart';

class CourseProgress extends StatelessWidget {
  final moduleList = Module.genrateModule();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                  const Text(
                " الدروس",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20, color: kFont),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.grid_4x4_outlined,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.list_alt_outlined)
                ],
              ),
          
            ],
          ),
          CourseModule(moduleList[0])
        ],
      ),
    );
  }
}
