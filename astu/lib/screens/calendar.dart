// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:astu/constants/constant.dart';
import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  static String id = 'calendar';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                height: 250,
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
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                        ),
                        SizedBox(height: 50),
                        Text("Calendar",
                            style: boldtext.copyWith(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ExpandableItem(
                    title: 'September',
                    content: '''
- First semester classes start: 1/9/2024
- Semester registration deadline: 15/9/2024
- Senate meeting: 25/9/2024
                    ''',
                  ),
                  ExpandableItem(
                    title: 'October',
                    content: '''
- Mid-term exams: 10/10/2024
- Senate meeting: 20/10/2024
- Grade submission for first half of the semester: 25/10/2024
                    ''',
                  ),
                  ExpandableItem(
                    title: 'November',
                    content: '''
- Final exams preparation
- Senate meeting
- Thanksgiving break
                    ''',
                  ),
                  ExpandableItem(
                    title: 'December',
                    content: '''
- Final exams
- Grade submission for the semester
- Winter break begins
                    ''',
                  ),
                  ExpandableItem(
                    title: 'January',
                    content: '''
- Second semester classes start: 1/1/2025
- Semester registration deadline: 15/1/2025
- Senate meeting: 25/1/2025
                    ''',
                  ),
                  ExpandableItem(
                    title: 'February',
                    content: '''
- Mid-term exams: 10/2/2025
- Senate meeting: 20/2/2025
- Grade submission for first half of the semester: 25/2/2025
                    ''',
                  ),
                  ExpandableItem(
                    title: 'March',
                    content: '''
- Final exams preparation
- Senate meeting
- Spring break
                    ''',
                  ),
                  ExpandableItem(
                    title: 'April',
                    content: '''
- Final exams
- Grade submission for the semester
- Second semester ends
                    ''',
                  ),
                  ExpandableItem(
                    title: 'May',
                    content: '''
- Summer break begins: 1/5/2025
- Summer semester registration: 3/6/2025
                    ''',
                  ),
                  ExpandableItem(
                    title: 'June',
                    content: '''
- Summer classes start: 10/6/2025
- Senate meeting: 20/6/2025
                    ''',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExpandableItem extends StatelessWidget {
  final String title;
  final String content;

  ExpandableItem({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(Icons.calendar_today , color: Colors.black,),
      title: Text(title , style: TextStyle(fontSize: 20),),
      children: <Widget>[
        ListTile(
          title: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              content,
              style: TextStyle(fontSize: 18 , ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ],
    );
  }
}
