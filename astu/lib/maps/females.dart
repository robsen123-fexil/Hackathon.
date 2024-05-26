import 'package:astu/maps/libraris.dart';
import 'package:flutter/material.dart';

class Females extends StatelessWidget {
   const Females({super.key});
  static String id = 'females';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Roundedmap(
        name: " Females Library",
        block: "Block 109",
        image1: 'images/females.jpg',
        image2: 'images/females2.jpg',
        image3: '',
      ),
    );
  }
}
