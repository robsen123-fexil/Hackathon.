// ignore_for_file: prefer_const_constructors

import 'package:astu/course/applied2.dart';
import 'package:astu/curriculum/about.dart';
import 'package:astu/screens/curriculum.dart';
import 'package:astu/screens/mapscreen.dart';
import 'package:flutter/material.dart';
import 'package:astu/screens/discover.dart';
import 'package:astu/screens/home.dart';
import 'package:astu/screens/rulespage.dart';
import 'package:astu/screens/cgpa.dart';
import 'package:astu/screens/schoollist.dart';
import 'package:astu/schooldept/applied.dart';
import 'package:astu/schooldept/mechanical.dart';
import 'package:astu/schooldept/civil.dart';
import 'package:astu/schooldept/electrical.dart';
import 'package:astu/screens/gpa.dart';
import 'package:astu/screens/clubs.dart';
import 'package:astu/screens/mealplan.dart';
import 'package:astu/screens/searchcourse.dart';
import 'package:astu/course/applied.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: DiscoveryPage.id, routes: {
      DiscoveryPage.id: (context) => DiscoveryPage(),
      Electrical.id: (context) => Electrical(),
      Civil.id: (context) => Civil(),
      Electrical.id: (context) => Electrical(),
      Mechanical.id: (context) => Mechanical(),
      SchoolList.id: (context) => SchoolList(),
      Applied.id: (context) => Applied(),
      GradeInputForm.id: (context) => GradeInputForm(),
      Cumulative.id: (context) => Cumulative(),
      Clubs.id: (context) => Clubs(),
      MealSchedule.id: (context) => MealSchedule(), 
      Courses.id:(context)=>Courses(),
      AppliedmathsII.id:(context)=>AppliedmathsII(),
      AppliedmathsI.id:(context)=>AppliedmathsI(),
      Curriculum.id:(context)=>Curriculum(),
      MapScreen.id:(context)=>MapScreen(),
      About.id:(context)=>About(),
    });
  }
}