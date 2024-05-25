// ignore_for_file: prefer_const_constructors

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
              Container(
                padding: EdgeInsets.all(20),
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 9,
                      blurRadius: 9,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(15),
                  ),
                  image: DecorationImage(
                    image: AssetImage("images/landing.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ))),
                          SizedBox(
                            width: 30,
                          ),
                         
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                       Text("Course's",
                          style: boldtext.copyWith(color: Colors.white))
                      
                    ]),
              ),
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
