import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          AppTabs(
            tabText: "Airline Tickets",
          ),
          AppTabs(
            tabText: "Hotels",
            tabBorder: true,
            tabColor: true,
          ),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs(
      {Key? key,
      this.tabText = "",
      this.tabBorder = false,
      this.tabColor = false})
      : super(key: key);
  final String tabText;
  final bool tabBorder;
  final bool tabColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .44,
      padding: EdgeInsets.symmetric(vertical: 7),
      child: Center(child: Text(tabText)),
      decoration: BoxDecoration(
          color: tabColor == true ? Colors.transparent : Colors.white,
          borderRadius: tabBorder == false
              ? BorderRadius.horizontal(left: Radius.circular(50))
              : BorderRadius.horizontal(right: Radius.circular(50))),
    );
  }
}
