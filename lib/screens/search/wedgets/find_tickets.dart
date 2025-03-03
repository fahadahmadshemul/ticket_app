import 'package:flutter/material.dart';
import 'package:helloworld/base/res/styles/app_style.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      decoration: BoxDecoration(
          color: AppStyle.findTicketColot,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          "Find Tickets",
          style: AppStyle.textStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
