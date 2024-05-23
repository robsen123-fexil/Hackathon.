// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  final String title;
  final String department;
  final VoidCallback onTap;

  const CourseItem({
    required this.title,
    required this.department,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Container(
        // ignore: duplicate_ignore
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(10),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black
              ),
            ),
            Text(
              department,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
