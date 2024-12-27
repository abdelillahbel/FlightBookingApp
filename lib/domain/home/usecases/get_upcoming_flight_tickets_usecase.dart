import 'package:dartz/dartz.dart';
import 'package:flightbookapp/core/usecase/usecase.dart';
import 'package:flightbookapp/domain/home/repositories/upcoming_flight_tickets_repository.dart';
import 'package:flightbookapp/service_locator.dart';

class GetUpcomingFlightTicketsUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async =>
      sl<UpcomingFlightTicketsRepository>().getUpcomingFlightTickets();
}
