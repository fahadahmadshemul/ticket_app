import 'dart:html';

import 'package:flutter/material.dart';
import 'package:helloworld/base/res/media.dart';
import 'package:helloworld/base/res/styles/app_style.dart';
import 'package:helloworld/base/utils/all_json.dart';
import 'package:helloworld/base/widgets/app_double_text.dart';
import 'package:helloworld/base/widgets/ticket_view.dart';
import 'package:helloworld/screens/home/wedgets/hotel.dart';
import 'package:helloworld/screens/search/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      //we take listView sothat we make it scrollable
      body: ListView(children: [
        const SizedBox(height: 40),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good Morning", style: AppStyle.headlineStyleThree),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Book Tickets", style: AppStyle.headlineStyleOne),
                    ],
                  ),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage(AppMedia.logo)),
                      ))
                ],
              ),
              const SizedBox(height: 25),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Color(0xffd8d7c8)),
                    Text("Search"),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const AppDoubleText(
                  bigText: 'Upcomming Flights',
                  smallText: 'View All',
                  routeName: '/all_tickets'),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: ticketList.map((singleTicket) {
                  return TicketView(ticket: singleTicket);
                }).toList()),
              ),
              const SizedBox(
                height: 20,
              ),
              const AppDoubleText(
                  bigText: 'Hotels',
                  smallText: 'View All',
                  routeName: '/all_hotels'),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: hotelList
                        .map((singleTicket) => Container(
                              child: Hotel(
                                hotel: singleTicket,
                              ),
                            ))
                        .toList()),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ]),
    );
  }
}
