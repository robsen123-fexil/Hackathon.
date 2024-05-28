// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class ExpandableItem extends StatelessWidget {
  final String title;
  final String content;

  const ExpandableItem({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(Icons.rule),
      backgroundColor: const Color.fromARGB(255, 206, 200, 200),
      title: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            content,
            style: TextStyle(fontSize: 17),
          ),
        ),
      ],
    );
  }
}


