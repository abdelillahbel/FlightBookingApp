import 'package:flightbookapp/core/config/themes/app_colors.dart';
import 'package:flightbookapp/presentation/home/widgets/dashed_line.dart';
import 'package:flightbookapp/presentation/home/widgets/semi_circle.dart';
import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  final String originCountryCode;
  final String originCountryName;
  final String destinationCountryCode;
  final String destinationCountryName;
  final String flightDuration;
  final String journeyDate;
  final String departureTime;
  final String number;

  const TicketCard({
    super.key,
    required this.originCountryCode,
    required this.originCountryName,
    required this.destinationCountryCode,
    required this.destinationCountryName,
    required this.flightDuration,
    required this.journeyDate,
    required this.departureTime,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      // height: 310,
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: Column(
          children: [
            ColoredBox(
              color: AppColors.primary,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _dualTextColumn(
                      context,
                      text1: originCountryCode ,
                      text2: originCountryName,
                    ),
                    _dualTextColumn(
                      context,
                      text1: '',
                      text2: flightDuration,
                      textAlignment: CrossAxisAlignment.center,
                    ),
                    _dualTextColumn(
                      context,
                      text1: destinationCountryCode,
                      text2: destinationCountryName,
                      textAlignment: CrossAxisAlignment.end,
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            _tearMarking(context),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _dualTextColumn(
                    context,
                    text1: journeyDate,
                    text2: 'Date',
                    color: AppColors.black,
                  ),
                  _dualTextColumn(
                    context,
                    text1: departureTime,
                    text2: 'Departure Time',
                    textAlignment: CrossAxisAlignment.center,
                    color: AppColors.black,
                  ),
                  _dualTextColumn(
                    context,
                    text1: number,
                    text2: 'Number',
                    textAlignment: CrossAxisAlignment.end,
                    color: AppColors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _dualTextColumn(
  BuildContext context, {
  required String text1,
  required String text2,
  CrossAxisAlignment textAlignment = CrossAxisAlignment.start,
  Color color = Colors.white,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    spacing: 10,
    crossAxisAlignment: textAlignment,
    children: [
      Text(
        text1,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: color,
              fontWeight: FontWeight.bold,
            ),
      ),
      Text(
        text2,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(color: color),
      ),
    ],
  );
}

Widget _tearMarking(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SemiCircle(
        color: AppColors.primary,
        isRight: true,
        radius: 10,
      ),
      DashedLine(
        dashWidth: 5,
        dashHeight: 2,
        dashSpacing: 5,
        color: AppColors.darkGrey,
        canvasWidth: MediaQuery.of(context).size.width * 0.75,
        canvasHeight: 10,
      ),
      const SemiCircle(
        color: AppColors.primary,
        isRight: false,
        radius: 10,
      ),
    ],
  );
}
