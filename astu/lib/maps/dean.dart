import 'package:astu/maps/libraris.dart';
import 'package:flutter/material.dart';

class DeanOffice extends StatelessWidget {
  const DeanOffice({super.key});
  static String id = 'dean';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Roundedmap(
        name: "Dean Office ",
        block: "Around Geda GateWay",
        image1: 'images/dean2.jpg',
        image2: 'images/dean1.jpg',
        image3: 'images/dean.jpg',
      ),
    );
  }
}
