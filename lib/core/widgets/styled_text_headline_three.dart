import 'package:flightbookapp/core/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class StyledTextHeadlineThree extends StatelessWidget {
  final String text;
  final Color color;
  const StyledTextHeadlineThree({super.key, required this.text,  this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headLineStyle3.copyWith(color: color),
    );
  }
}
