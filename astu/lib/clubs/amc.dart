// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:astu/clubs/Roundedclub.dart';
import 'package:flutter/material.dart';

class Amc extends StatelessWidget {
  Amc({super.key});
  static String id = 'amc';

  @override
  Widget build(BuildContext context) {
    return RoundedClub(
      description:
          "AMC aims to enhance the educational experience by providing hands-on learning opportunities, fostering innovation, and facilitating professional growth. Through a variety of activities including workshops, guest lectures, industrial visits, and collaborative projects, the club offers members practical insights into the field of mechanical engineering.",
      image: 'images/mechanicalclub.jpg',
      
      name: "ASTU Mechanical Club",
    );
  }
}
