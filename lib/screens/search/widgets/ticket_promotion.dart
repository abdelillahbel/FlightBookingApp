import 'package:flightbookapp/core/res/media.dart';
import 'package:flightbookapp/core/res/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          width: size.width * .42,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200, blurRadius: 1, spreadRadius: 2)
              ]),
          child: Column(
            children: [
              Container(
                  height: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(AppMedia.hotelRoom),
                        fit: BoxFit.cover),
                  )),
              SizedBox(
                height: 12,
              ),
              Text(
                "20% discount on early booking of this flight.\nDont miss!",
                style: AppStyles.headLineStyle2,
              )
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  width: size.width * .44,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange.shade800,
                      borderRadius: BorderRadius.circular(18)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount\nfor survey",
                        style: AppStyles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Take the survey about our services and get discount.",
                        style: AppStyles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -35,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18, color: Colors.deepOrange.shade900)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              width: size.width * 0.44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.pink.shade500),
              child: Column(
                children: [
                  Text(
                    "Take love",
                    style:
                        AppStyles.headLineStyle2.copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image(
                      width: 90,
                      height: 90,
                      image: AssetImage(AppMedia.emojiLoveEyes))
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
