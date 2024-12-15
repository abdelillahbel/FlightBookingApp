import 'package:flightbookapp/core/data/hotels_list.dart';
import 'package:flightbookapp/core/data/tickets_data.dart';
import 'package:flightbookapp/core/widgets/ticket_view.dart';
import 'package:flightbookapp/screens/home/widgets/hotel_card.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flightbookapp/core/res/media.dart';
import 'package:flightbookapp/core/res/styles/app_styles.dart';
import 'package:flightbookapp/core/widgets/app_texts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
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
                            style: AppStyles.headLineStyle3
                                .copyWith(color: Colors.grey)),
                        SizedBox(
                          height: 5,
                        ),
                        GradientText(
                          'Book Tickets',
                          style: TextStyle(
                              fontSize: 26.0, fontWeight: FontWeight.bold),
                          colors: [
                            Colors.redAccent,
                            Colors.red,
                            Colors.red.shade800,
                          ],
                        )
                      ],
                    ),
                    Container(
                        width: 70,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            color: Colors.transparent,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(AppMedia.airalgeria))))
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
                  height: 40,
                ),
                AppTexts(
                  titleText: "Upcoming Flights",
                  descText: "View all",
                  func: () => Navigator.pushNamed(context, "all_tickets"),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ticketList
                          .take(2)
                          .map((singleTicket) =>
                              TicketView(ticket: singleTicket))
                          .toList(),
                    )),
                SizedBox(
                  height: 40,
                ),
                AppTexts(
                  titleText: "Hotels",
                  descText: "View all",
                  func: () {},
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotelsList
                          .take(2)
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
