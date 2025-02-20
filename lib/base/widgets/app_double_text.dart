import 'package:flutter/material.dart';
import 'package:helloworld/base/res/styles/app_style.dart';

class AppDoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  final String routeName;

  const AppDoubleText(
      {Key? key,
      required this.bigText,
      required this.smallText,
      required this.routeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyle.headlineStyleTwo,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, routeName);
          },
          child: Text(smallText,
              style: AppStyle.textStyle.copyWith(color: AppStyle.primaryColor)),
        )
      ],
    );
  }
}
