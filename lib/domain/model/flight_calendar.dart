import 'package:cloud_firestore/cloud_firestore.dart';

class FlightCalendar {
  final String? id;
  final String userId;
  final DateTime createdAt;
  final String aircraftRegistration;
  final double totalFlightTime;
  final double distance;
  final String history;

  FlightCalendar({
    this.id,
    required this.userId,
    required this.createdAt,
    required this.aircraftRegistration,
    required this.totalFlightTime,
    required this.distance,
    required this.history,
  });

  factory FlightCalendar.fromJson(Map<String, dynamic> json) {
    return FlightCalendar(
      id: json['id'] as String?,
      userId: json['userId'] as String, // userId 추가
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
      'userId': userId, // userId 추가
      'createdAt': Timestamp.fromDate(createdAt),
      'aircraftRegistration': aircraftRegistration,
      'totalFlightTime': totalFlightTime,
      'distance': distance,
      'history': history,
    };
  }

  FlightCalendar copyWith({
    String? id,
    String? userId,
    DateTime? createdAt,
    String? aircraftRegistration,
    double? totalFlightTime,
    double? distance,
    String? history,
  }) {
    return FlightCalendar(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      aircraftRegistration: aircraftRegistration ?? this.aircraftRegistration,
      totalFlightTime: totalFlightTime ?? this.totalFlightTime,
      distance: distance ?? this.distance,
      history: history ?? this.history,
    );
  }
}
