import 'package:flightbookapp/core/widgets/styled_text_headline_three.dart';
import 'package:flutter/material.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment crossAxisAlignment;
  const AppColumnTextLayout(
      {super.key, required this.topText, required this.bottomText, required this.crossAxisAlignment});

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
        StyledTextHeadlineThree(text: bottomText, color: Colors.black)
      ],
    );
  }
}
