import 'package:flightbookapp/core/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class StyledTextHeadlineThree extends StatelessWidget {
  final String text;
  const StyledTextHeadlineThree({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
    );
  }
}
