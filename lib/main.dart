import 'package:flightbookapp/core/config/themes/app_theme.dart';
import 'package:flightbookapp/core/routes/route_configuration.dart';
import 'package:flightbookapp/service_locator.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await initializeDependencies();
  runApp(const FlightBookingApp());
}

class FlightBookingApp extends StatelessWidget {
  const FlightBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.lightTheme,
      routerConfig: RouteConfiguration.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
