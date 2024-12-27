import 'package:flightbookapp/domain/home/usecases/get_upcoming_flight_tickets_usecase.dart';
import 'package:flightbookapp/presentation/home/features/upcoming_flights/bloc/upcoming_flight_tickets_state.dart';
import 'package:flightbookapp/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpcomingFlightTicketsCubit extends Cubit<UpcomingFlightTicketsState> {
  UpcomingFlightTicketsCubit() : super(UpcomingFlightTicketsInitial());

  void displayUpcomingFlightTickets() async {
    emit(UpcomingFlightTicketsLoading());
    // await Future.delayed(const Duration(seconds: 2));
    // var upcomingFlightTickets =

    var ticketEntitiesList = await sl<GetUpcomingFlightTicketsUseCase>().call();

    return ticketEntitiesList.fold(
      (error) => emit(UpcomingFlightTicketsFailureState(error: error)),
      (ticketList) => emit(UpcomingFlightTicketsLoaded(upcomingFlightTickets: ticketList)),
    );
  }
}
