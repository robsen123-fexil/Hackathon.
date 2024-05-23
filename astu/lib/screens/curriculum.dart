// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Curriculum extends StatelessWidget {
  const Curriculum({super.key});
  static String id = 'slider';

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        SliderPage(color: Colors.blue, text: ""),
        SliderPage(color: Colors.red, text: "page2")
      ],
    );
  }
}

class SliderPage extends StatelessWidget {
  final Color color;
  final String text;

  SliderPage({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          Container(
          padding: EdgeInsets.all(20),
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            image: DecorationImage(
              image: AssetImage("images/mechanical.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox( 
          height: 50,
        ),
        TextButton(onPressed: (){
        }, child: Column(children:[
          Text("Computer Science and Engineering " , style: TextStyle(color: Colors.black , fontSize: 20),)
        ] ))

        ] 
      ),
    ));
  }
}
