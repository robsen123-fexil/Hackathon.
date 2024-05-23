// ignore_for_file: prefer_const_constructors

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
      Mealplan.id: (context) => Mealplan(), 
      Courses.id:(context)=>Courses()
    });
  }
}
