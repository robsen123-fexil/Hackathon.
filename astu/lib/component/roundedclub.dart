// ignore_for_file: prefer_const_constructors

import 'package:astu/constants/constant.dart';
import 'package:flutter/material.dart';

class Roundedclub extends StatelessWidget {
  String title;
  String description;
  String image;
  VoidCallback onpress;
  Roundedclub(
      {super.key,
      required this.title,
      required this.description,
      required this.image,
      required this.onpress,
      
      });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpress,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align text to the start (left)
              children: [
                Text(
                  title,
                  style: boldtext.copyWith(fontSize: 20),
                ),
                Text(
                  description,
                 softWrap: true,
                 maxLines: 3,
                overflow: TextOverflow.ellipsis,
                  
            
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100, // Adjusted width for better layout
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover, // Ensures the image covers the container
              ),
            ),
          ),
        ],
      ),
    );
  }
}
