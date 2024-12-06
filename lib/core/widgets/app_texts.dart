import 'package:flutter/material.dart';
import 'package:tickets_app/core/res/styles/app_styles.dart';

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
          onTap: () {},
          child: Text(
            descText,
            style: AppStyles.textStyle.copyWith(
              color: AppStyles.primaryColor
            ),
          ),
        )
      ],
    );
  }
}
