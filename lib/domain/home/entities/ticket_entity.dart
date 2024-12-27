

class TicketEntity {
  final Map<String, String> from;
  final Map<String, String> to;
  final String flyingTime;
  final String date;
  final String departureTime;
  final String number;

  TicketEntity({
    required this.from,
    required this.to,
    required this.flyingTime,
    required this.date,
    required this.departureTime,
    required this.number,
  });
}
