import 'package:flightbookapp/domain/home/entities/ticket_entity.dart';

abstract class UpcomingFlightTicketsState {}

class UpcomingFlightTicketsInitial extends UpcomingFlightTicketsState {}

class UpcomingFlightTicketsLoading extends UpcomingFlightTicketsState {}

class UpcomingFlightTicketsLoaded extends UpcomingFlightTicketsState {
  final List<TicketEntity> upcomingFlightTickets;

  UpcomingFlightTicketsLoaded({required this.upcomingFlightTickets});
}

class UpcomingFlightTicketsFailureState extends UpcomingFlightTicketsState {
  final String error;

  UpcomingFlightTicketsFailureState({required this.error});
}
