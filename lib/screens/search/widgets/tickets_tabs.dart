import 'package:flightbookapp/screens/search/widgets/search_tabs_widget.dart';
import 'package:flutter/material.dart';

class TicketsTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;

  const TicketsTabs({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(46), color: Color(0xFFF4F6FD)),
      child: Row(
        children: [
          SearchTabsWidget(
            tabText: firstTab,
            tabBorder: false,
          ),
          SearchTabsWidget(
            tabText: secondTab,
            tabBorder: true,
            tabColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
