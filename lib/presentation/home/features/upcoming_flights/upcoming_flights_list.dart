import 'package:flightbookapp/presentation/home/features/upcoming_flights/bloc/upcoming_flight_tickets_cubit.dart';
import 'package:flightbookapp/presentation/home/features/upcoming_flights/bloc/upcoming_flight_tickets_state.dart';
import 'package:flightbookapp/presentation/home/widgets/ticket_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpcomingFlightTicketsList extends StatelessWidget {
  const UpcomingFlightTicketsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.24,
      child:
          BlocBuilder<UpcomingFlightTicketsCubit, UpcomingFlightTicketsState>(
        builder: (context, state) {
          if (state is UpcomingFlightTicketsLoading) {
            return const Center(child: CircularProgressIndicator.adaptive());
          }
          if (state is UpcomingFlightTicketsLoaded) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: state.upcomingFlightTickets.length,
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemBuilder: (context, index) => TicketCard(
                  originCountryCode: state.upcomingFlightTickets[index].from['code'] ?? 'XXX',
                  originCountryName: state.upcomingFlightTickets[index].from['name'] ?? 'xxxx',
                  destinationCountryCode: state.upcomingFlightTickets[index].to['code'] ??'YYY',
                  destinationCountryName: state.upcomingFlightTickets[index].to['name'] ?? 'yyyy',
                  flightDuration: state.upcomingFlightTickets[index].flyingTime,
                  journeyDate: state.upcomingFlightTickets[index].date,
                  departureTime: state.upcomingFlightTickets[index].departureTime,
                  number: state.upcomingFlightTickets[index].number,
                ),
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
    //     }
    //     return const SizedBox();
    //   },
    // );
  }
}
