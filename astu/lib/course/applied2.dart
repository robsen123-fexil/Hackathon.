// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:astu/course/coursedetail.dart';
import 'package:flutter/material.dart';

class AppliedmathsII extends StatelessWidget {
  static String id = 'appleid2';
  AppliedmathsII({super.key});

  @override
  Widget build(BuildContext context) {
    return Coursedetail(
      credithr: 4,
      title: "Applied Mathematics II",
      name: "MATH1102",
      prerequist: "MATH1102",
      description:
          "This course provides an introduction to applied mathematics with a focus on the techniques and methods used to solve real-world problems. Topics covered include differential equations, linear algebra, and mathematical modeling. Students will learn how to formulate mathematical models, analyze them, and interpret the results in the context of various applications. The course also emphasizes the development of problem-solving skills and the ability to communicate mathematical concepts effectively.",
    );
  }
}
