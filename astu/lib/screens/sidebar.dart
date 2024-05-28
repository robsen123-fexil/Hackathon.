// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:astu/screens/calendar.dart';
import 'package:astu/screens/cgpa.dart';
import 'package:astu/screens/offcampuslist.dart';
import 'package:astu/screens/phone.dart';
import 'package:astu/screens/rulespage.dart';
import 'package:astu/screens/schoollist.dart';
import 'package:astu/screens/searchcourse.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Sidebar extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/sideimage.jpg"),
                      fit: BoxFit.cover)),
              child: Text(
                '',
                style: TextStyle(
                  color: const Color.fromARGB(255, 13, 13, 13),
                  fontSize: 24,
                ),
              ),
            ),
            
            ListTile(
              leading: Icon(Icons.grade),
              title: Text('Courses',style: TextStyle(fontSize: 18),),
              onTap: () {
                Navigator.pushNamed(context, Courses.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text('Calculator',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pushNamed(context, GradeInputForm.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Curriculum',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pushNamed(context, SchoolList.id);
              },
            ),
            
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone List',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pushNamed(context, Phone.id);
              },
            ),
           
            ListTile(
              leading: Icon(Icons.rule),
              title: Text(
                'Rules & Regulation',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pushNamed(context, Rulespage.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text(
                'Calendar',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pushNamed(context, Calendar.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.menu_book),
              title: Text(
                'Off Campus Menu',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pushNamed(context, Offcampuslist.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}

