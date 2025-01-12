import 'package:flightbookapp/screens/home/all_tickets_screen.dart';
import 'package:flutter/material.dart';
import 'package:flightbookapp/core/res/styles/app_theme.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AppTexts extends StatelessWidget {
  final String titleText;
  final String descText;
  final VoidCallback func;
  final bool newFeature;

  const AppTexts(
      {super.key,
      required this.titleText,
      required this.descText,
      required this.func,
      this.newFeature = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              titleText,
              style: AppTheme.headLineStyle2,
            ),
            if (newFeature == true)
              Card(
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.all(6),
                  child: GradientText(
                    'New',
                    style: AppTheme.headLineStyle1.copyWith(fontSize: 8),
                    colors: [
                      const Color.fromARGB(255, 215, 7, 7),
                      Colors.red,
                    ],
                  ),
                ),
              )
          ],
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
