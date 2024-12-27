import 'dart:convert';

import 'package:flightbookapp/domain/home/entities/ticket_entity.dart';

class TicketModel extends TicketEntity {
  TicketModel({
    required super.from,
    required super.to,
    required super.flyingTime,
    required super.date,
    required super.departureTime,
    required super.number,
  });

  Map<String, dynamic> toMap() => <String, dynamic>{
        'from': from,
        'to': to,
        'flyingTime': flyingTime,
        'date': date,
        'departureTime': departureTime,
        'number': number,
      };

  factory TicketModel.fromMap(Map<String, dynamic> map) => TicketModel(
        from: map['from'] as Map<String, String>,
        to: map['to'] as Map<String, String>,
        flyingTime: map['flyingTime'] as String,
        date: map['date'] as String,
        departureTime: map['departureTime'] as String,
        number: map['number'] as String,
      );

  String toJson() => json.encode(toMap());

  TicketModel fromJson(String source) =>
      TicketModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

extension TicketModelExtension on TicketModel {
  TicketEntity toEntity() => TicketEntity(
        from: from,
        to: to,
        flyingTime: flyingTime,
        date: date,
        departureTime: departureTime,
        number: number,
      );
}
