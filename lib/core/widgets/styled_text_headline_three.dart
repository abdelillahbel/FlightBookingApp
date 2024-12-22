import 'package:flightbookapp/core/res/styles/app_theme.dart';
import 'package:flutter/material.dart';

class StyledTextHeadlineThree extends StatelessWidget {
  final String text;
  final Color color;
  const StyledTextHeadlineThree(
      {super.key, required this.text, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTheme.headLineStyle3
          .copyWith(color: color, fontWeight: FontWeight.w700),
    );
  }
}
