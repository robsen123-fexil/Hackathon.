import 'package:astu/clubs/Roundedclub.dart';
import 'package:flutter/material.dart';

class A2sv extends StatelessWidget {
  const A2sv({super.key});
  static String id = 'a2sv';

  @override
  Widget build(BuildContext context) {
    return RoundedClub(
        description: " A2sv id club",
        image: 'images/csec.jpeg',
        phot02: 'images/csec.jpeg',
        photo1: 'images/csec.jpeg',
        name: "African To Silcon Valley");
  }
}
