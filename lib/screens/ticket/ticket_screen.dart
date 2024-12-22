import 'package:flightbookapp/core/data/tickets_data.dart';
import 'package:flightbookapp/core/res/styles/app_theme.dart';
import 'package:flightbookapp/core/widgets/ticket_view.dart';
import 'package:flightbookapp/screens/search/widgets/tickets_tabs.dart';
import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

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
          Text(
            "Tickets",
            style: AppTheme.headLineStyle1,
          ),
          SizedBox(
            height: 20,
          ),
          TicketsTabs(
            firstTab: "Upcoming",
            secondTab: "Previous",
          ),
          SizedBox(
            height: 20,
          ),
          TicketView(
            ticket: ticketList[0],
            wholeScreen: true,
            primaryColor: Colors.black,
            secondaryColor: Colors.grey.shade700,
            designColor: Colors.lightBlue.shade200,
            circleColor: Colors.white,
            styleTwo: true,
          )
        ],
      ),
    );
  }
}
