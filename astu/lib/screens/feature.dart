// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Feature extends StatelessWidget {
  final String image;
  final String about;
  final String description;

  const Feature({
    Key? key,
    required this.image,
    required this.about,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.all(20),
          height: 400,
          width: double.infinity,
        ),
        Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          height: 300,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  about,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  description,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
