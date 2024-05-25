import 'package:astu/clubs/Roundedclub.dart';
import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  const Space({super.key});
  static String id = 'space_club';

  @override
  Widget build(BuildContext context) {
    return RoundedClub(
        description: "Our club serves as a launchpad for students interested in all aspects of space science, including astronomy, astrophysics, planetary science, and space exploration. Whether you're fascinated by the wonders of the night sky, eager to delve into the latest research on distant planets, or dream of contributing to humanity's journey to the stars, the Space Science Club provides a welcoming and stimulating environment to pursue your interests.",
        image: 'images/Space.jpeg',
       
        name: "Space Science Club");
  }
}
