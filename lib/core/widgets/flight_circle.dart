import 'package:flutter/material.dart';

class FlightCircle extends StatelessWidget {
  const FlightCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: Colors.white) ,
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
