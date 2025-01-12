import 'package:flightbookapp/core/data/hotels_list.dart';
import 'package:flightbookapp/core/res/styles/app_theme.dart';
import 'package:flightbookapp/core/utils/app_routes.dart';
import 'package:flightbookapp/screens/home/widgets/grid_hotel_card.dart';
import 'package:flightbookapp/screens/home/widgets/hotel_card.dart';
import 'package:flutter/material.dart';

class AllHotelsScreen extends StatelessWidget {
  const AllHotelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgColor,
      appBar: AppBar(
        title: Text("All Hotels"),
        backgroundColor: AppTheme.bgColor,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0.0,
                  mainAxisSpacing: 14.0,
                  childAspectRatio: 0.6),
              itemCount: hotelsList.length,
              itemBuilder: (context, index) {
                var singleHotel = hotelsList[index];
                return GridHotelCard(hotel: singleHotel, index: index);
              }),
        ),
      ),
    );
  }
}
