import 'package:flightbookapp/core/config/themes/app_colors.dart';
import 'package:flightbookapp/presentation/home/features/upcoming_flights/bloc/upcoming_flight_tickets_cubit.dart';
import 'package:flightbookapp/presentation/home/features/upcoming_flights/upcoming_flights_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UpcomingFlightTicketsCubit()..displayUpcomingFlightTickets(),
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackground,
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              UpcomingFlightTicketsList(),
            ],
          ),
        ),
      ),
    );
  }
}

// class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
//   @override
//   Widget build(BuildContext context) {
//     return 
//   }

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => const Size.fromHeight(100);

// }