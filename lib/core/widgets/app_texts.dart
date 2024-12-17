import 'package:flightbookapp/screens/home/all_tickets_screen.dart';
import 'package:flutter/material.dart';
import 'package:flightbookapp/core/res/styles/app_theme.dart';

class AppTexts extends StatelessWidget {
  final String titleText;
  final String descText;
  final VoidCallback func;

  const AppTexts(
      {super.key,
      required this.titleText,
      required this.descText,
      required this.func});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleText,
          style: AppTheme.headLineStyle2,
        ),
        InkWell(
          onTap: func,
          child: Text(
            descText,
            style: AppTheme.textStyle.copyWith(color: AppTheme.primaryColor),
          ),
        )
      ],
    );
  }
}
