import 'package:flightbookapp/core/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final windowSize = MediaQuery.of(context).size;

    return SizedBox(
      width: windowSize.width * 0.85,
      height: 170,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "ORN",
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                ),
                Expanded(child: Container()),
                Text(
                  "DXB",
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                )
              ],
            )
          ],
        ),
        decoration: BoxDecoration(
            color: AppStyles.ticketTopColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(19), topRight: Radius.circular(19))),
      ),
    );
  }
}
