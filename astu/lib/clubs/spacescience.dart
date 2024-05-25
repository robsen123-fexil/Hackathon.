import 'package:astu/clubs/Roundedclub.dart';
import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  const Space({super.key});
  static String id = 'space_club';

  @override
  Widget build(BuildContext context) {
    return RoundedClub(
        description: "this is a club for space scienc",
        image: 'images/Space.jpeg',
        phot02: 'images/Space.jpeg',
        photo1: 'images/Space.jpeg',
        name: "Space Science Club");
  }
}
