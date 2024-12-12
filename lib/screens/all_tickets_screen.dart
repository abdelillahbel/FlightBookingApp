import 'package:flightbookapp/core/data/tickets_data.dart';
import 'package:flightbookapp/core/widgets/ticket_view.dart';
import 'package:flutter/material.dart';

class AllTicketsScreen extends StatelessWidget {
  const AllTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map((singleTicket) => TicketView(ticket: singleTicket))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
