// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:astu/constants/constant.dart';
import 'package:astu/component/expansionitem.dart';

class Rulespage extends StatefulWidget {
  const Rulespage({super.key});

  @override
  State<Rulespage> createState() => _RulespageState();
}

class _RulespageState extends State<Rulespage> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
           title: Text(
          "Rule's",
          style: boldtext, // Ensure `boldtext` is defined in `constants.dart`
        ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 30),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
         
          
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Text(
                  "Policies and Procedures",
                  style: boldtext.copyWith(fontSize: 25),
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
                ],
              ),
            ],
          ),
        ),
      
    );
  }
}
