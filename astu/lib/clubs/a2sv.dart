import 'package:astu/clubs/Roundedclub.dart';
import 'package:flutter/material.dart';

class A2sv extends StatelessWidget {
  const A2sv({super.key});
  static String id = 'a2sv';

  @override
  Widget build(BuildContext context) {
    return RoundedClub(
        description: " This club serves as a platform for ambitious and driven individuals who seek to immerse themselves in the vibrant ecosystem of Silicon Valley, where groundbreaking startups, established tech giants, and visionary entrepreneurs converge.Through networking events, workshops, guest speakers, and mentorship programs, A2SV provides its members with valuable insights, resources, and connections to navigate the Silicon Valley landscape effectively.",
        image: 'images/a2sv.jpg',
      
        name: "A2SV",);
  }
}
