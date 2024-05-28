// ignore_for_file: prefer_const_constructors

import 'package:astu/constants/constant.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  String title;
  VoidCallback ontap;
  RoundedContainer({
    required this.title,
    required this.ontap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 9,
            blurRadius: 9,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(15),
        ),
        image: DecorationImage(
          image: AssetImage("images/landing.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: ontap,
                icon: Icon(Icons.arrow_back, color: Colors.white),
              ),
              SizedBox(height: 40),
              Text(title, style: boldtext.copyWith(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
