import 'package:cloud_firestore/cloud_firestore.dart';

class FlightCalendar {
  final String? id;
  final DateTime createdAt;
  final String aircraftRegistration;
  final double totalFlightTime;
  final double distance;
  final String history;

  FlightCalendar({
    this.id,
    required this.createdAt,
    required this.aircraftRegistration,
    required this.totalFlightTime,
    required this.distance,
    required this.history,
  });

  factory FlightCalendar.fromJson(Map<String, dynamic> json) {
    return FlightCalendar(
      id: json['id'] as String?,
      createdAt: (json['createdAt'] as Timestamp).toDate(),
      aircraftRegistration: json['aircraftRegistration'] as String,
      totalFlightTime: (json['totalFlightTime'] as num).toDouble(),
      distance: (json['distance'] as num).toDouble(),
      history: json['history'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdAt': Timestamp.fromDate(createdAt),
      'aircraftRegistration': aircraftRegistration,
      'totalFlightTime': totalFlightTime,
      'distance': distance,
      'history': history,
    };
  }

  FlightCalendar copyWith({
    String? id,
    DateTime? createdAt,
    String? aircraftRegistration,
    double? totalFlightTime,
    double? distance,
    String? history,
  }) {
    return FlightCalendar(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      aircraftRegistration: aircraftRegistration ?? this.aircraftRegistration,
      totalFlightTime: totalFlightTime ?? this.totalFlightTime,
      distance: distance ?? this.distance,
      history: history ?? this.history,
    );
  }
}
