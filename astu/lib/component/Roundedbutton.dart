import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  final Widget icon;

  RoundedButton({
    Key? key,
    required this.title,
    required this.ontap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 96, 96, 96),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Center(
              child: icon,
            ),
          ),
          Divider(
            height: 10,
            thickness: 1,
            color: Colors.grey,
            indent: 40,
            endIndent: 40,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
