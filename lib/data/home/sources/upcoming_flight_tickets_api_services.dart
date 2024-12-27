import 'package:dartz/dartz.dart';
import 'package:flightbookapp/dummy_data.dart';

abstract class UpcomingFlightTicketsApiServices {
  Future<Either> getUpcomingFlightTickets();
}

class UpcomingFlightTicketBackendServiceImplementation
    extends UpcomingFlightTicketsApiServices {
  @override
  Future<Either> getUpcomingFlightTickets() async {
    /*
      ..............
      Code to send request to api end point
      ..............
      */

    //*Mocking api request and response handling*///
    

    try {
      await Future.delayed(const Duration(seconds: 2)); //response time
      List<Map<String, dynamic>> ticketData = DummyData.ticketData;
      return Right(ticketData);
    } catch (e) {
      return const Left('Some error occurred while fetching data');
    }
  }
}
