import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(color: Color(0XFFC0BDCB), fontSize: 25);

class IconWid extends StatelessWidget {
  IconWid({required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(text, style: labelTextStyle),
      ],
    );
  }
}
