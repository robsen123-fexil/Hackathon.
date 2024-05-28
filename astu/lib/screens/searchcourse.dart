// ignore_for_file: prefer_const_constructors

import 'package:astu/component/roundedcontainer.dart';
import 'package:astu/constants/constant.dart';
import 'package:astu/course/applied.dart';
import 'package:astu/course/applied2.dart';
import 'package:astu/course/applied3.dart';
import 'package:astu/course/chemistry.dart';
import 'package:astu/course/computing.dart';
import 'package:astu/course/logic.dart';
import 'package:astu/course/physics.dart';
import 'package:astu/schooldept/applied.dart';
import 'package:flutter/material.dart';
import 'package:astu/component/roundedcourse.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});
  static String id = 'search';

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              RoundedContainer(title: "Course's", ontap: (){
                Navigator.pop(context);
              }),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              CourseItem(
                onTap: () {
                  Navigator.pushNamed(context, AppliedmathsI.id);
                },
                title: "Applied Mathematics I",
                department: "Math1101",
              ),
              CourseItem(
                onTap: () {
                  Navigator.pushNamed(context, AppliedmathsII.id);
                },
                title: "Applied Mathematic II",
                department: "Math1102",
              ),
              CourseItem(
                 onTap: () {
                  Navigator.pushNamed(context, AppliedmathsIII.id);
                },
                title: "Applied Mathematic III",
                department: "Math1103",
              ),
              CourseItem(
                onTap: () {
                  Navigator.pushNamed(context, Physics.id);
                },
                title: "General Physcis",
                department: "Phys1101",
              ),
              CourseItem(
                onTap: () {
                  Navigator.pushNamed(context, Chemistry.id);
                },
                title: "General Chemistry",
                department: "Phys1101",
              ),
              CourseItem(
                 onTap: () {
                  Navigator.pushNamed(context, Computing.id);
                },
                title: "Introduction To Computing",
                department: "CSEg1101",
              ),
              CourseItem(
                onTap: () {
                  Navigator.pushNamed(context,Logic.id);
                },
                title: "Login & Critical Thinking",
                department: "LART11012",
              ),
              CourseItem(
                 onTap: () {
                  Navigator.pushNamed(context, Computing.id);
                },
                title: "Introduction To Computing",
                department: "CSEg1101",
              ),
              CourseItem(
                onTap: () {},
                title: "Software Architecture & Design",
                department: "SENg3202",
              ),
              CourseItem(
                onTap: () {},
                title: "Operating System",
                department: "Seng3207",
              ),
              CourseItem(
                onTap: () {},
                title: "Computer Graphics",
                department: "CSEg1109",
              ),
              CourseItem(
                onTap: () {},
                title: "Data Communication & Networking",
                department: "Cseg3101",
              ),
              CourseItem(
                onTap: () {},
                title: "DataBase",
                department: "CSEg3201",
              ),
              CourseItem(
                onTap: () {},
                title: "Object Oriented",
                department: "SEng3202",
              ),
              CourseItem(
                onTap: () {},
                title: "Digital Login Design",
                department: "ECEG3206",
              ),
              CourseItem(
                onTap: () {},
                title: "General Phsycology a",
                department: "LART2002",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
