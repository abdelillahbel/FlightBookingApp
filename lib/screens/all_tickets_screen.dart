import 'package:flightbookapp/core/data/tickets_data.dart';
import 'package:flightbookapp/core/res/styles/app_styles.dart';
import 'package:flightbookapp/core/widgets/ticket_view.dart';
import 'package:flutter/material.dart';

class AllTicketsScreen extends StatelessWidget {
  const AllTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: Text("All Tickets"),
        backgroundColor: AppStyles.bgColor,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map((singleTicket) => Container(
                      margin: EdgeInsets.only(bottom: 16),
                      child:
                          TicketView(wholeScreen: true, ticket: singleTicket)))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
