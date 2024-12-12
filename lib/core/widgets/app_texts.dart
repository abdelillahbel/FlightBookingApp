import 'package:flightbookapp/screens/home/all_tickets_screen.dart';
import 'package:flutter/material.dart';
import 'package:flightbookapp/core/res/styles/app_styles.dart';

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
          style: AppStyles.headLineStyle2,
        ),
        InkWell(
          onTap: func,
          child: Text(
            descText,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        )
      ],
    );
  }
}
