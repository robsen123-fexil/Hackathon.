// ignore_for_file: prefer_const_constructors

import 'package:astu/offcampus/shefmami.dart';
import 'package:flutter/material.dart';

class Akukulubot extends StatelessWidget {
  const Akukulubot({super.key});
  static String id = 'akukulubot';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: FoodPage(
                name1: "Akulukulu Toast",
                name2: "Akukulu Special",
                name3: "Akukulu Sandwich",
                name4: "Custom Akukulu",
                price1: 60,
                price2: 110,
                price3: 80,
                price44: 100,
                no: "+25190900909")));
  }
}
