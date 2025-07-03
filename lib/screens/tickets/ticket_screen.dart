import 'package:flutter/material.dart';
import 'package:helloworld/base/res/styles/app_style.dart';
import 'package:helloworld/screens/search/wedgets/app_tickets_tab.dart';
import 'package:helloworld/base/widgets/ticket_view.dart';
import 'package:helloworld/base/utils/all_json.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 20),
          Text("Tickets", style: AppStyle.headlineStyleOne),
          SizedBox(height: 20),
          AppTicketTabs(firstTab: "Upcomming", secondTab: "Previous"),
          SizedBox(height: 20),
          TicketView(ticket: ticketList[0]),
          // TicketView(ticket: ticketList[0]),
        ],
      ),
    );
  }
}
