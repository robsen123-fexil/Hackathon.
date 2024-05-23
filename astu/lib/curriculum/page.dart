// ignore_for_file: prefer_const_constructors, use_super_parameters

import 'package:flutter/material.dart';

class RoundedPage extends StatelessWidget {
  final String text;
  final Color color;

  const RoundedPage({required this.text, required this.color, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          
          children: [
          Container( 
            height: 300,
            width: 300,
         decoration: BoxDecoration( 
          image: DecorationImage(image: AssetImage("images/csec.jpeg" , ) , fit: BoxFit.cover)
         ),
          ),
         Padding(
          padding: EdgeInsets.all(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 400,
              color: color.withOpacity(0.5),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          )],
      ),
    );
  }
}
