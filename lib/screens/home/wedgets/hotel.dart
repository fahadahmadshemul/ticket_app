import 'package:flutter/material.dart';
import 'package:helloworld/base/res/styles/app_style.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.all(8.0),
      width: size.width * 0.6,
      height: 360,
      decoration: BoxDecoration(
        color: AppStyle.primaryColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: AppStyle.primaryColor,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        AssetImage("assets/assets/images/${hotel['image']}"))),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel['place'],
              style:
                  AppStyle.headlineStyleOne.copyWith(color: AppStyle.kakiColor),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel['destination'],
              style: AppStyle.headlineStyleThree.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "\$${hotel['price']}/Night",
              style:
                  AppStyle.headlineStyleOne.copyWith(color: AppStyle.kakiColor),
            ),
          )
        ],
      ),
    );
  }
}
