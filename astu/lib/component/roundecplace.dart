// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RoundedPlace extends StatelessWidget {
  RoundedPlace({
    super.key,
    required this.name,
    required this.onpress
  });
  String name;
  VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 70,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 251, 248, 248),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed:onpress,
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Row(
          children: [
            Icon(Icons.location_pin),
            SizedBox(width: 10),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
