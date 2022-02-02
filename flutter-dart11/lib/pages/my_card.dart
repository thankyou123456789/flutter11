import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final IconData? icon;

  const MyCard({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.white),
        SizedBox(height: 6),
        Text(title!, style: TextStyle(color: Colors.white)),
        Text(subTitle!, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
