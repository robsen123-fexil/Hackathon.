import 'package:astu/maps/libraris.dart';
import 'package:flutter/material.dart';

class Stadium extends StatelessWidget {
   const Stadium({super.key});
 static String id = 'stadium';

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Roundedmap(name: "Astu Stadium",  image1: 'images/stadium.jpg',image2: 'images/stadium1.jpg',image3: 'images/stadium2.jpg', block: 'Around Freshman Dorm',),
    );
  }
}
