import 'package:flightbookapp/core/res/styles/app_theme.dart';
import 'package:flightbookapp/screens/home/all_tickets_screen.dart';
import 'package:flutter/material.dart';
import 'package:flightbookapp/core/bottom_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primaryColor: primary,
        useMaterial3: true,
       /*  textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ), */
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => BottomNavBar(),
        "all_tickets": (context) => AllTicketsScreen()
      },
    );
  }
}
