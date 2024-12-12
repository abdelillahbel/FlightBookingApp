import 'package:flightbookapp/screens/search/widgets/search_tabs_widget.dart';
import 'package:flutter/material.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(46), color: Color(0xFFF4F6FD)),
      child: Row(
        children: [
          SearchTabsWidget(
            tabText: "All Tickets ",
            tabBorder: false,
          ),
          SearchTabsWidget(
            tabText: "Hotels",
            tabBorder: true,
            tabColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}


