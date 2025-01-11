import 'package:flightbookapp/core/res/styles/app_theme.dart';
import 'package:flutter/material.dart';

class AllHotelsScreen extends StatelessWidget {
  const AllHotelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgColor,
      appBar: AppBar(
        title: Text("All Hotels"),
        backgroundColor: AppTheme.bgColor,
      ),
      body: ListView(),
    );
  }
}
