import 'package:astu/clubs/Roundedclub.dart';
import 'package:flutter/material.dart';

class Alx extends StatelessWidget {
  const Alx({super.key});
  static String id = 'alx';

  @override
  Widget build(BuildContext context) {
    return RoundedClub(
      description:
          "As part of the ALX program, students are connected with a diverse community of peers who share a common commitment to personal and professional development. Whether you're embarking on your ALX journey or already immersed in the program, ALX Community provides a valuable platform to connect with like-minded individuals, exchange ideas, and collaborate on projects that drive positive change.",
      image: 'images/alx.jpg',
     
      name: "ALX ASTU",
    );
  }
}
