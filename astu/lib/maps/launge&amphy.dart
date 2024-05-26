
import 'package:astu/maps/libraris.dart';
import 'package:flutter/material.dart';

class Amphy extends StatelessWidget {
  const Amphy({super.key});
  static String id = 'Amphy';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Roundedmap(
        name: "Amphy & launge",
        block: "Around Females Library",
        image1: 'images/amphy3.jpg',
        image2: 'images/amphy1.jpg',
        image3: 'images/amphy.jpg',
      ),
    );
  }
}
