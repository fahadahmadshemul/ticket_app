import 'package:flutter/material.dart';
import 'package:helloworld/base/res/styles/app_style.dart';
import 'package:helloworld/base/utils/all_json.dart';
import 'package:helloworld/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyle.bgColor,
        body: Row(
            children: ticketList.map((singleTicket) {
          return TicketView(ticket: singleTicket);
        }).toList()));
  }
}
