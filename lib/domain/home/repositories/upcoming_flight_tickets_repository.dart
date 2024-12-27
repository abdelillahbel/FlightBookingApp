import 'package:dartz/dartz.dart';

abstract class UpcomingFlightTicketsRepository {
  Future<Either> getUpcomingFlightTickets();
}
