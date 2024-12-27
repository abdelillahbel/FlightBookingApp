import 'package:dartz/dartz.dart';
import 'package:flightbookapp/data/home/models/ticket_model.dart';
import 'package:flightbookapp/data/home/sources/upcoming_flight_tickets_api_services.dart';
import 'package:flightbookapp/domain/home/repositories/upcoming_flight_tickets_repository.dart';
import 'package:flightbookapp/service_locator.dart';

class UpcomingFlightTicketsRepositoryImplementation
    implements UpcomingFlightTicketsRepository {
  @override
  Future<Either> getUpcomingFlightTickets() async {
    var ticketData =
        await sl<UpcomingFlightTicketBackendServiceImplementation>()
            .getUpcomingFlightTickets();

    return ticketData.fold(
      (error) => Left(error),
      //converting the response to entity
      (data) => Right(List.from(data)
          .map((element) => TicketModel.fromMap(element).toEntity())
          .toList()),
    );
  }
}
