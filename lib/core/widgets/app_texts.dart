import 'package:flightbookapp/screens/all_tickets_screen.dart';
import 'package:flutter/material.dart';
import 'package:flightbookapp/core/res/styles/app_styles.dart';

class AppTexts extends StatelessWidget {
  const AppTexts({super.key, required this.titleText, required this.descText});

  final String titleText;
  final String descText;

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
          onTap: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const AllTicketsScreen(),
              ),
            );
          },
          child: Text(
            descText,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        )
      ],
    );
  }
}
