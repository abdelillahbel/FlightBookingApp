import 'package:flightbookapp/core/res/styles/app_theme.dart';
import 'package:flightbookapp/core/utils/app_routes.dart';
import 'package:flutter/material.dart';

class GridHotelCard extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final int index;
  const GridHotelCard({super.key, required this.hotel, required this.index});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        print("my index is $index");
        Navigator.pushNamed(context, AppRoutes.hotelDetailsScreen,
            arguments: {"index": index});
      },
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(right: 14),
        // width: 250,
        height: 350,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(22)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160,
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
                style: AppTheme.headLineStyle2.copyWith(color: Colors.black45),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                hotel['destination'],
                style: AppTheme.headLineStyle3.copyWith(color: Colors.black45),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "€${hotel['price']}/night",
                style: AppTheme.headLineStyle2.copyWith(color: Colors.black45),
              ),
            )
          ],
        ),
      ),
    );
  }
}
