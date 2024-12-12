import 'package:flightbookapp/core/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class StyledTextHeadlineFour extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final Color color;
  const StyledTextHeadlineFour(
      {super.key,
      required this.text,
      this.textAlign = TextAlign.start,
      this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: AppStyles.headLineStyle4.copyWith(color: color),
    );
  }
}
