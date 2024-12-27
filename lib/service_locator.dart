import 'package:flightbookapp/data/home/repositories/upcoming_flight_tickets_repository_implementation.dart';
import 'package:flightbookapp/data/home/sources/upcoming_flight_tickets_api_services.dart';
import 'package:flightbookapp/domain/home/repositories/upcoming_flight_tickets_repository.dart';
import 'package:flightbookapp/domain/home/usecases/get_upcoming_flight_tickets_usecase.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<UpcomingFlightTicketsRepository>(
      UpcomingFlightTicketsRepositoryImplementation());

  sl.registerSingleton<UpcomingFlightTicketBackendServiceImplementation>(
      UpcomingFlightTicketBackendServiceImplementation());

  sl.registerSingleton<GetUpcomingFlightTicketsUseCase>(
      GetUpcomingFlightTicketsUseCase());
}
