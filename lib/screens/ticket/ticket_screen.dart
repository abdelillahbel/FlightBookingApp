import 'package:flightbookapp/core/res/styles/app_styles.dart';
import 'package:flightbookapp/screens/search/widgets/tickets_tabs.dart';
import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Tickets",
            style: AppStyles.headLineStyle1,
          ),
          SizedBox(height: 20,),
          TicketsTabs(
            firstTab: "Upcoming",
            secondTab: "Previous",

          )
        ],
      ),
    );
  }
}