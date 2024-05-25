import 'package:astu/clubs/Roundedclub.dart';
import 'package:flutter/material.dart';

class Parlma extends StatelessWidget {
  const Parlma({super.key});
  static String id = 'Parlma';

  @override
  Widget build(BuildContext context) {
    return RoundedClub(
      description:
          "Our club provides a platform for students who are passionate about entrepreneurship to connect, learn, and grow together. Through workshops, speaker series, networking events, and hands-on activities, EIC Club empowers members to explore their entrepreneurial ideas, develop essential skills, and turn their visions into reality.",
      image: 'images/a2sv.jpg',
      
      name: "EIC ASTU",
    );
  }
}
