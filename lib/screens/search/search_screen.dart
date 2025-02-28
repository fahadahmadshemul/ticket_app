import 'package:flutter/material.dart';
import 'package:helloworld/base/res/styles/app_style.dart';
import 'package:helloworld/base/widgets/text_style_third.dart';
import 'package:helloworld/screens/search/wedgets/app_text_icon.dart';
import 'package:helloworld/screens/search/wedgets/app_tickets_tab.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "What are\nyou looking for ?",
            style: AppStyle.headlineStyleOne.copyWith(fontSize: 35),
          ),
          SizedBox(
            height: 20,
          ),
          const AppTicketTabs(),
          SizedBox(
            height: 25,
          ),
          AppTextIcon(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          SizedBox(height: 25),
          AppTextIcon(icon: Icons.flight_land_rounded, text: "Arrival"),
        ],
      ),
    );
  }
}
