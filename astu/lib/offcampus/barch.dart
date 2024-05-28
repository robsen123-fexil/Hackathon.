// ignore_for_file: prefer_const_constructors

import 'package:astu/offcampus/shefmami.dart';
import 'package:flutter/material.dart';

class Barch extends StatelessWidget {
  const Barch({super.key});
  static String id = 'barch';

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
          )),
          body: FoodPage(no: "+2519400443" ,name1: "Special", name2: "Enqual Xebs", name3: "Mulu Ferfer",name4: "Tegabino", price1: 210, price2: 190, price3: 160, price44: 170,)),
    );
  }
}
