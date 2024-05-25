// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:astu/course/coursedetail.dart';
import 'package:flutter/material.dart';

class ComputerGraphics extends StatelessWidget {
  static String id = 'graphics';
  ComputerGraphics({super.key});

  @override
  Widget build(BuildContext context) {
    return Coursedetail(
      credithr: 3,
      title: "Computer Graphics",
      name: "Cseg1109",
      prerequist: "None",
      description:
          "This course provides an introduction to Computer Graphics with a focus on the techniques and methods used to solve real-world problems. Topics covered include differential equations, linear algebra, and mathematical modeling. Students will learn how to formulate mathematical models, analyze them, and interpret the results in the context of various applications. The course also emphasizes the development of problem-solving skills and the ability to communicate mathematical concepts effectively.",
    );
  }
}
