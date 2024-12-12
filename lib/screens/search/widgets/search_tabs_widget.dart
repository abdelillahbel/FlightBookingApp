import 'package:flutter/material.dart';

class SearchTabsWidget extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final Color tabColor;

  const SearchTabsWidget(
      {super.key,
      this.tabText = "",
      this.tabBorder = false,
      this.tabColor = Colors.white});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      width: size.width * .44,
      child: Center(child: Text(tabText)),
      decoration: BoxDecoration(
          color: tabColor,
          borderRadius: tabBorder == false
              ? BorderRadius.horizontal(left: Radius.circular(46))
              : BorderRadius.horizontal(right: Radius.circular(46))),
    );
  }
}