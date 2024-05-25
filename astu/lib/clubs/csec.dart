import 'package:astu/clubs/Roundedclub.dart';
import 'package:flutter/material.dart';

class Csec extends StatelessWidget {
  const Csec({super.key});
  static String id = 'csec';

  @override
  Widget build(BuildContext context) {
    return RoundedClub(
        description:
            "Introducing CSEC (Computer Science and Engineering Club), your gateway to the world of technology, development, competition, and problem-solving. CSEC is dedicated to fostering a vibrant community of tech enthusiasts who are passionate about advancing their skills in software development, participating in competitive programming, and tackling real-world problems with innovative solutions.",
        image: 'images/csec.jpeg',
       
        name: 'CSEC ASTU');
  }
}
