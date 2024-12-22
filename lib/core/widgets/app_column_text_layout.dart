import 'package:flightbookapp/core/widgets/styled_text_headline_four.dart';
import 'package:flightbookapp/core/widgets/styled_text_headline_three.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment crossAxisAlignment;
  final Color color;
  final bool? styleTwo;
  
  const AppColumnTextLayout(
      {super.key,
      required this.topText,
      required this.bottomText,
      required this.crossAxisAlignment,
      this.color = Colors.black,
      this.styleTwo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        StyledTextHeadlineThree(
          text: topText,
          color: Colors.black,
        ),
        SizedBox(
          height: 5,
        ),
        StyledTextHeadlineFour(
            text: bottomText, color: styleTwo == true ? color : Colors.black)
      ],
    );
  }
}
