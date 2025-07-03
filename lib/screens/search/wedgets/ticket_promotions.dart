import 'package:flutter/material.dart';
import 'package:helloworld/base/res/media.dart';
import 'package:helloworld/base/res/styles/app_style.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          width: size.width * .42,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200, spreadRadius: 1, blurRadius: 2)
              ]),
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(AppMedia.planeSit))),
              ),
              SizedBox(height: 12),
              Text(
                  "20% discount on the early bookingo of this flight. Don't miss",
                  style: AppStyle.headlineStyleTwo),
            ],
          ),
        ),
        Column(
          children: [
            Stack(children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: size.width * .44,
                // height: 220,
                decoration: BoxDecoration(
                  color: const Color(0xFF3AB8B8),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount\nfor surver",
                        style: AppStyle.headlineStyleThree.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Take the survey about our services and get discount",
                        style: AppStyle.headlineStyleThree.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18),
                      )
                    ]),
              ),
              Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(width: 18, color: AppStyle.circleColor)),
                  ))
            ]),
            const SizedBox(height: 15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              width: size.width * .44,
              height: 210,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xFFEC6545)),
              child: Column(
                children: [
                  Text(
                    "Take Love",
                    style:
                        AppStyle.headlineStyleTwo.copyWith(color: Colors.white),
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(text: '😍', style: TextStyle(fontSize: 30)),
                    TextSpan(text: '🥰', style: TextStyle(fontSize: 40)),
                    TextSpan(text: '😘', style: TextStyle(fontSize: 30)),
                    // TextSpan(text: '😘', style: TextStyle(fontSize: 30)),
                  ]))
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
