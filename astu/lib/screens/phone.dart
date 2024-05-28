// ignore_for_file: prefer_const_constructors

import 'package:astu/component/roundedcontainer.dart';
import 'package:astu/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Phone extends StatelessWidget {
  static String id = 'phone';
  const Phone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            RoundedContainer(
                title: "Phone",
                ontap: () {
                  Navigator.pop(context);
                }),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                children: [
                  RoundedPhone(
                    name: "Ambulance Service",
                    no: "+251940046254",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  RoundedPhone(
                    name: "Student Police",
                    no: "+251911223344",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  RoundedPhone(
                    name: "Deparment Head's",
                    no: "+251933445566",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  RoundedPhone(
                    name: "Dean Secretary",
                    no: "+251933445566",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  RoundedPhone(
                    name: "Dormitory",
                    no: "+251933445566",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  RoundedPhone(
                    name: "Dean ,SoEEC",
                    no: "+25193038966",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  RoundedPhone(
                    name: "CSE Head",
                    no: "+25195405566",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  RoundedPhone(
                    name: "SOCAE",
                    no: "+25194329026",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  RoundedPhone(
                    name: "Association Dean For Student",
                    no: "+25195445566",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  RoundedPhone(
                    name: "Associate Dean For Acadamic Affair's",
                    no: "+25193738566",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedPhone extends StatelessWidget {
  final String name;
  final String no;

  const RoundedPhone({super.key, required this.name, required this.no});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: ExpansionTile(
        backgroundColor:
            const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
        title: Text(
          name,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                // GestureDetector(
                //   onTap: () async {
                //     final url = 'tel:$no';
                //     if (await canLaunchUrl(Uri.parse(url))) {
                //       await launchUrl(Uri.parse(url));
                //     } else {
                //       throw 'Could not launch $url';
                //     }
                //   },
                //   child: Text(
                //     no,
                //     style: TextStyle(
                //         fontSize: 18,
                //         color: Colors.blue,
                //         decoration: TextDecoration.underline),
                //   ),
                // ),
                ElevatedButton(
                    onPressed: () async {
                      final url = 'tel:$no';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url));
                      } else {
                        throw 'Could Not Launch on this Device ';
                      }
                    },
                    child: Text(no))
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// onPressed: () async {
//                 const no = '+251940046254';
//                 // in here tel is used to define it is phone number.
//                 // canlaunch have differnt schema those http:$url  , tel:$url , sms:$url , mailto$url ,
//                 const url = 'tel:$no';
//                 if (await canLaunchUrl(Uri.parse(url))) {
//                   await launchUrl(Uri.parse(url));
//                 } else {
//                   throw 'Could not Call on this Device';
//                 }
//               },