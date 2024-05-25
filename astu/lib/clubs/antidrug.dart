import 'package:astu/clubs/Roundedclub.dart';
import 'package:flutter/material.dart';

class AntiDrug extends StatelessWidget {
  const AntiDrug({super.key});
  static String id = 'antidrug';

  @override
  Widget build(BuildContext context) {
    return RoundedClub(
        description: "thid is an anti frug club",
        image: 'images/antidrug.jpeg',
        phot02: 'images/antidrug.jpeg',
        photo1: 'images/antidrug.jpeg',
        name: " Anti_Drug Club");
  }
}
