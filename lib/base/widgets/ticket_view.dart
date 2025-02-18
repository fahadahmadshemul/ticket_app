import 'package:flutter/material.dart';
import 'package:helloworld/base/res/styles/app_style.dart';
import 'package:helloworld/base/widgets/app_column_text_layout.dart';
import 'package:helloworld/base/widgets/app_layout_builder_widget.dart';
import 'package:helloworld/base/widgets/big_circle.dart';
import 'package:helloworld/base/widgets/big_dot.dart';
import 'package:helloworld/base/widgets/text_style_fourth.dart';
import 'package:helloworld/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  // final Map<String dynamic> ticket;
  final Map<String, dynamic> ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.80,
      height: 300,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            // Blue part of the ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyle.ticketBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    // Show departure and destination with icons
                    Row(
                      children: [
                        TextStyleThird(
                          text: ticket["from"]["code"],
                        ),
                        Expanded(child: Container()),
                        BigDot(),
                        Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 24,
                                child: AppLayoutBuilder(
                                  randomDivider: 6,
                                ),
                              ),
                              Center(
                                child: Transform.rotate(
                                  angle: 1.57,
                                  child: Icon(
                                    Icons.flight,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        BigDot(),
                        Expanded(child: Container()),
                        TextStyleThird(text: ticket["to"]["code"]),
                      ],
                    ),
                    SizedBox(height: 3),
                    // Show departure and destination with time
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                          child: TextStyleFourth(text: ticket["from"]["name"]),
                        ),
                        TextStyleFourth(text: ticket["flying_time"]),
                        SizedBox(
                          width: 80,
                          child: TextStyleFourth(
                            text: ticket["to"]["name"],
                            align: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Divider part of the ticket
            Container(
              height: 20,
              color: AppStyle.ticketOrange,
              child: Row(
                children: [
                  BigCircle(isRight: false),
                  Expanded(
                    child: AppLayoutBuilder(
                      randomDivider: 20,
                      width: 6,
                    ),
                  ),
                  BigCircle(isRight: true),
                ],
              ),
            ),
            // Orange part of the ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyle.ticketOrange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppLayoutTextColumn(
                        topText: ticket['date'],
                        bottomText: "Date",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppLayoutTextColumn(
                        topText: ticket["departure_time"],
                        bottomText: "Departure",
                        alignment: CrossAxisAlignment.center,
                      ),
                      AppLayoutTextColumn(
                        topText: ticket["number"].toString(),
                        bottomText: "Tickets",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
