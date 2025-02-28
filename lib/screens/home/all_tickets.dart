import 'package:flutter/material.dart';
import 'package:helloworld/base/res/styles/app_style.dart';
import 'package:helloworld/base/utils/all_json.dart';
import 'package:helloworld/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("All Tickets"),
        ),
        backgroundColor: AppStyle.bgColor,
        body: ListView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: ticketList
                    .map((singleTicket) => Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: TicketView(
                          ticket: singleTicket,
                          wholeScreen: true,
                        )))
                    .toList(),
              ),
            )
          ],
        ));
  }
}
