import 'package:flutter/material.dart';
import 'package:helloworld/base/res/styles/app_style.dart';
import 'package:helloworld/base/widgets/app_double_text.dart';
import 'package:helloworld/screens/search/wedgets/app_text_icon.dart';
import 'package:helloworld/screens/search/wedgets/app_tickets_tab.dart';
import 'package:helloworld/screens/search/wedgets/find_tickets.dart';
import 'package:helloworld/screens/search/wedgets/ticket_promotions.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "What are\nyou looking for ?",
            style: AppStyle.headlineStyleOne.copyWith(fontSize: 35),
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(firstTab: "Airline Tickets", secondTab: "Hotels"),
          const SizedBox(
            height: 25,
          ),
          const AppTextIcon(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          const SizedBox(height: 20),
          const AppTextIcon(icon: Icons.flight_land_rounded, text: "Arrival"),
          const SizedBox(height: 25),
          const FindTickets(),
          const SizedBox(height: 40),
          const AppDoubleText(
              bigText: "Upcomming Fights",
              smallText: "View All",
              routeName: '/all_tickets'),
          const SizedBox(height: 15),
          TicketPromotion(),
          // TicketPromotion(),
        ],
      ),
    );
  }
}
