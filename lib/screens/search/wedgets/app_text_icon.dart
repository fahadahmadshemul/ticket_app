import 'package:flutter/material.dart';
import 'package:helloworld/base/res/styles/app_style.dart';

class AppTextIcon extends StatelessWidget {
  const AppTextIcon({Key? key, required this.icon, required this.text})
      : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(children: [
        Icon(
          icon,
          color: AppStyle.planeColor,
        ),
        SizedBox(width: 10),
        Text(
          text,
          style: AppStyle.textStyle,
        )
      ]),
    );
  }
}
