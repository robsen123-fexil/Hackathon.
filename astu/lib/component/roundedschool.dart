// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:astu/constants/constant.dart';

class RoundedSchool extends StatelessWidget {
  String title;
  String dept;
  String image;
  String description;
  VoidCallback onpress;
  RoundedSchool(
      {super.key,
      required this.title,
      required this.dept,
      required this.image,
      required this.description,
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    return 
    TextButton(onPressed: onpress, 
    child: Row(children: [
        Container(
          height: 100,
          width: 100,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: boldtext.copyWith(fontSize: 20),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                 dept,
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16 , color: Colors.black),
                // Allow text to wrap to the next line
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
