// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundedButton extends StatelessWidget {
  String? title;
  VoidCallback? ontap;
  Widget icons;

  RoundedButton({super.key, required this.title, required this.ontap , required this.icons});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 96, 96, 96),
                  blurRadius: 5,
                  // offset: Offset(1, 2),
                ),
              ],
            ),
            child: Center(
                child:icons
              
              
            ),
          ),
          SizedBox(),
          Divider(
            height: 10,
            thickness: 1,
            color: Colors.grey,
            indent: 40,
            endIndent: 40,
          ),
          Text(
            title!,
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
