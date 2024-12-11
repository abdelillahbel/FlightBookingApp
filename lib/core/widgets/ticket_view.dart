import 'package:flightbookapp/core/res/styles/app_styles.dart';
import 'package:flightbookapp/core/widgets/app_layout_builder.dart';
import 'package:flightbookapp/core/widgets/circle_half.dart';
import 'package:flightbookapp/core/widgets/flight_circle.dart';
import 'package:flightbookapp/core/widgets/styled_text_headline_four.dart';
import 'package:flightbookapp/core/widgets/styled_text_headline_three.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final windowSize = MediaQuery.of(context).size;

    return SizedBox(
      width: windowSize.width * 0.90,
      height: 190,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        child: Column(
          children: [
            // Ticket top section
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: AppStyles.ticketTopColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(19),
                      topRight: Radius.circular(19))),
              child: Column(
                children: [
                  // destinations with codes
                  Row(
                    children: [
                      StyledTextHeadlineThree(
                        text: "ORN",
                      ),
                      Expanded(child: Container()),
                      FlightCircle(),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: AppLayoutBuilder(
                              randomDivider: 6,
                              color: Colors.white,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: -4.8,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )),
                      FlightCircle(),
                      Expanded(child: Container()),
                      StyledTextHeadlineThree(
                        text: "DXB",
                      )
                    ],
                  ),

                  SizedBox(
                    height: 3,
                  ),
                  // destinations names and time
                  Row(
                    children: [
                      SizedBox(
                          width: 100,
                          child: StyledTextHeadlineFour(text: "Oran")),
                      Expanded(child: Container()),
                      StyledTextHeadlineFour(text: "09:30 AM"),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: StyledTextHeadlineFour(
                          text: "Dubai",
                          textAlign: TextAlign.end,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            // Ticket middle section
            Container(
              color: AppStyles.ticketBottomColor,
              child: Row(
                children: [
                  CircleHalf(
                    isRight: false,
                  ),
                  Expanded(
                      child: AppLayoutBuilder(
                    randomDivider: 12,
                    width: 4,
                    color: Colors.grey,
                  )),
                  CircleHalf(
                    isRight: true,
                  ),
                ],
              ),
            ),
            // Ticket bottom section
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBottomColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(19),
                      bottomRight: Radius.circular(19))),
              child: Column(
                children: [
                  // destinations with codes
                  Row(
                    children: [
                      Text(
                        "1 May",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.black),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "09:00 AM",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.black),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "13",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.black),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 3,
                  ),
                  // destinations names and time
                  Row(
                    children: [
                      Text(
                        "Date",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.black),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Departure time",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.black),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Number",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
