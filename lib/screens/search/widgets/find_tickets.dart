import 'package:flightbookapp/core/res/styles/app_theme.dart';
import 'package:flutter/material.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      child: Center(
        child: Text(
          "Search",
          style: AppTheme.textStyle.copyWith(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.red.shade800),
    );
  }
}
