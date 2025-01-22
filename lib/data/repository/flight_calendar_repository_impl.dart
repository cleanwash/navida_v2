import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:navida_v2/domain/model/flight_calendar.dart';
import 'package:navida_v2/domain/repository/flight_calendart_repository.dart';

class FlightCalendarRepositoryImpl implements FlightCalendarRepository {
  final FirebaseFirestore _firestore;

  FlightCalendarRepositoryImpl({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  @override
  Future<List<FlightCalendar>> getFlightCalendars() async {
    try {
      final querySnapshot = await _firestore.collection('flightCalendar').get();
      return querySnapshot.docs
          .map((doc) => FlightCalendar.fromJson({
                ...doc.data(),
                'id': doc.id,
              }))
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> createFlightCalendar(FlightCalendar flightCalendar) async {
    try {
      final docRef = await _firestore.collection('flightCalendar').add({
        'createdAt': flightCalendar.createdAt,
        'aircraftRegistration': flightCalendar.aircraftRegistration,
        'totalFlightTime': flightCalendar.totalFlightTime,
        'distance': flightCalendar.distance,
        'history': flightCalendar.history,
      });

      // ID 업데이트
      await docRef.update({'id': docRef.id});
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> updateFlightCalendar(
      String id, FlightCalendar flightCalendar) async {
    try {
      await _firestore.collection('flightCalendar').doc(id).update({
        'createdAt': flightCalendar.createdAt,
        'aircraftRegistration': flightCalendar.aircraftRegistration,
        'totalFlightTime': flightCalendar.totalFlightTime,
        'distance': flightCalendar.distance,
        'history': flightCalendar.history,
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteFlightCalendar(String id) async {
    try {
      await _firestore.collection('flightCalendar').doc(id).delete();
    } catch (e) {
      rethrow;
    }
  }
}
