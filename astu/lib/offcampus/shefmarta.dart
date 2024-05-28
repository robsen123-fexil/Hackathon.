// ignore_for_file: prefer_const_constructors

import 'package:astu/offcampus/shefmami.dart';
import 'package:flutter/material.dart';

class ShefMarta extends StatelessWidget {
  const ShefMarta({super.key});
  static String id = 'shefmarta';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: FoodPage(
          no: "+2519446254",
          name1: "Xebs Ferfer",
          name2: "Mulu Ferfer",
          name3: "Pasta Be Enkulal",
          name4: "Special",
          price1: 180,
          price2: 160,
          price3: 170,
          price44: 210,
        ),
      ),
    );
  }
}
