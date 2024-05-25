// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:astu/constants/constant.dart';
import 'package:astu/component/expansionitem.dart';

class Rulespage extends StatefulWidget {
  const Rulespage({super.key});

  static String id = 'rule';

  @override
  State<Rulespage> createState() => _RulespageState();
}

class _RulespageState extends State<Rulespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      
      body: SingleChildScrollView(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
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
                      Text("Policies & Procedures",
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
                  title: "Drug and Alcohol Use Policy",
                  content:
                      "Use, possession, or distribution of illegal drugs on campus is strictly prohibited. Underage drinking is not allowed, and alcohol consumption for those of legal age is restricted to designated areas. Misuse or sharing of prescription drugs is banned. Public intoxication is forbidden. Any student caught violating these rules will face immediate expulsion from campus.",
                ),
                ExpandableItem(
                  title: "Campus Access Policy",
                  content:
                      "Unauthorized entry into campus buildings is prohibited. Students must carry ID cards at all times. Access to certain areas is restricted to authorized personnel only. Guests must register and be escorted by a host. Tampering with security systems is forbidden. Violations will result in disciplinary action, including possible expulsion.",
                ),
                ExpandableItem(
                  title: "Violence and Harassment Policy",
                  content:
                      "Any form of violence, including physical altercations, threats, and intimidation, is strictly prohibited. Harassment, including sexual harassment, bullying, and discrimination, is not tolerated. Verbal, physical, or online harassment is forbidden. Reporting mechanisms are in place for victims. Violations will result in severe disciplinary action, including possible expulsion.",
                ),
                ExpandableItem(
                  title: "Theft and Property Damage Policy",
                  content:
                      "Stealing, unauthorized possession, or damage to property is strictly prohibited. This includes theft of personal belongings, vandalism, and tampering with equipment. Students are responsible for maintaining the condition of campus property. Those found violating this policy will face disciplinary action, including possible expulsion.",
                ),
                ExpandableItem(
                  title: "Time Availability Policy",
                  content:
                      "Students must be present and available on campus before 9:00 PM each night. Failure to comply may result in disciplinary action. Exceptions require prior approval from relevant campus authorities.",
                ),
                ExpandableItem(
                  title: "Grading Policy",
                  content:
                      " Grade appeals are a formal process that allows students to contest a grade they believe was unfairly assigned. The process typically involves submitting a written appeal to the instructor, department chair, or academic dean, and providing evidence or arguments for why the grade should be reconsidered.",
                ),
                ExpandableItem(
                  title: "Incomplete Grades",
                  content:
                      " An incomplete grade F  may be assigned when a student is unable to complete coursework by the end of the term due to extenuating circumstances such as illness or family emergency. The student is given additional time, typically up to one semester, to complete the required work.",
                ),
                ExpandableItem(
                  title: "GPA Calculation",
                  content:
                      "Grade Point Average (GPA) is calculated by dividing the total grade points earned by the total credit hours attempted. It provides a numerical representation of a student's academic performance over a term or their entire academic career.",
                ),
                ExpandableItem(
                  title: "Add/Drop Period",
                  content:
                      "The add/drop period is a designated timeframe at the beginning of each term during which students can add new courses or drop existing ones without any academic penalty or financial cost. This period usually lasts one to two weeks.",
                ),
                ExpandableItem(
                  title: "Cheating",
                  content:
                      "Cheating involves using unauthorized materials, information, or aids in any academic exercise. This can include copying from another student, using unauthorized notes during an exam, or receiving illicit assistance on assignments.",
                ),
                ExpandableItem(
                  title: "Late Add/Drop",
                  content:
                      "Adding or dropping courses after the official add/drop period typically requires special approval from academic advisors or the department. Late changes may incur additional fees and are often granted only under extenuating circumstances.",
                ),
                ExpandableItem(
                  title: "Event Planning and Approval",
                  content:
                      " Policies for planning and approving events on campus ensure that activities are safe, inclusive, and align with the institution's values. This process typically involves submitting an event proposal, securing necessary permits, and coordinating with campus services.",
                ),
                ExpandableItem(
                  title: "Campus Safety and Security",
                  content:
                      "Campus safety and security policies are designed to protect the well-being of students, staff, and visitors. This includes emergency response procedures, crime reporting, building access controls, and safety education programs.",
                ),
                ExpandableItem(
                  title: "Student Conduct and Discipline",
                  content:
                      "Student conduct and discipline policies outline the behavioral expectations for students and the consequences for violations. This includes a code of conduct, disciplinary procedures, and potential sanctions for misconduct.",
                ),
                ExpandableItem(
                  title: "Non-Discrimination and Harassment",
                  content:
                      "Non-discrimination and harassment policies ensure a safe and inclusive environment by prohibiting discrimination and harassment based on race, gender, sexual orientation, religion, and other protected characteristics.",
                ),
                ExpandableItem(
                  title: "Freedom of Expression and Assembly",
                  content:
                      "Policies regarding freedom of expression and assembly protect students' rights to free speech and peaceful assembly while ensuring that such activities do not disrupt campus operations or infringe on the rights of others.",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
