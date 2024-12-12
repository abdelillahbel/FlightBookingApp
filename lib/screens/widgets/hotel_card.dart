import 'package:flightbookapp/core/res/media.dart';
import 'package:flightbookapp/core/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class HotelCard extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelCard({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(right: 14),
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
          color: Colors.grey.shade300, borderRadius: BorderRadius.circular(22)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"))),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel['place'],
              style: AppStyles.headLineStyle1.copyWith(color: Colors.black45),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel['destination'],
              style: AppStyles.headLineStyle2.copyWith(color: Colors.black45),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "\$${hotel['price']}/night",
              style: AppStyles.headLineStyle1.copyWith(color: Colors.black45),
            ),
          )
        ],
      ),
    );
  }
}