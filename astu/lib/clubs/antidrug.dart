import 'package:astu/clubs/Roundedclub.dart';
import 'package:flutter/material.dart';

class AntiDrug extends StatelessWidget {
  const AntiDrug({super.key});
  static String id = 'antidrug';

  @override
  Widget build(BuildContext context) {
    return RoundedClub(
        description: "Our mission is to educate, support, and empower students to make healthy choices and resist peer pressure related to drug use. Through informative workshops, engaging activities, guest speakers, and outreach programs, the Anti-Drug Club aims to foster a safe and supportive environment for all students.",
        image: 'images/antidrug.jpeg',
        
        name: " Anti_Drug Club");
  }
}
