import 'package:flightbookapp/core/data/hotels_list.dart';
import 'package:flightbookapp/core/data/tickets_data.dart';
import 'package:flightbookapp/core/utils/app_routes.dart';
import 'package:flightbookapp/core/widgets/ticket_view.dart';
import 'package:flightbookapp/screens/home/widgets/hotel_card.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flightbookapp/core/res/app_media.dart';
import 'package:flightbookapp/core/res/styles/app_theme.dart';
import 'package:flightbookapp/core/widgets/app_texts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hey there",
                            style: AppTheme.headLineStyle3
                                .copyWith(color: Colors.grey)),
                        SizedBox(
                          height: 0,
                        ),
                        GradientText(
                          'Book Tickets',
                          style: AppTheme.headLineStyle1,
                          colors: [
                            const Color.fromARGB(255, 215, 7, 7),
                            Colors.red,
                            Colors.red.shade800,
                          ],
                        )
                      ],
                    ),
                    Container(
                        width: 120,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            color: Colors.transparent,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(AppMedia.redWhiteMap))))
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF4F6FD)),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Search")
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                AppTexts(
                  newFeature: true,
                  titleText: "Upcoming Flights",
                  descText: "View all",
                  func: () =>
                      Navigator.pushNamed(context, AppRoutes.allTicketsScreen),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ticketList
                          //.take(2)
                          .map((singleTicket) => TicketView(
                                ticket: singleTicket,
                                isDefault: false,
                              ))
                          .toList(),
                    )),
                SizedBox(
                  height: 20,
                ),
                AppTexts(
                  titleText: "Hotels",
                  descText: "View all",
                  func: () {
                    Navigator.pushNamed(context, AppRoutes.allHotelsScreen);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotelsList
                          //.take(2)
                          .map((singleHotel) => HotelCard(hotel: singleHotel))
                          .toList(),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
