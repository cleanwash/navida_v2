import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:navida_v2/domain/model/flight_calendar.dart';
import 'package:navida_v2/domain/repository/flight_calendart_repository.dart';

class FlightCalendarRepositoryImpl implements FlightCalendarRepository {
  final FirebaseFirestore _firestore;
  final String _userId;

  FlightCalendarRepositoryImpl(
      {required FirebaseFirestore firestore, required String userId})
      : _firestore = firestore,
        _userId = userId;

  @override
  Future<List<FlightCalendar>> getFlightCalendars() async {
    try {
      final querySnapshot = await _firestore
          .collection('flightCalendar')
          .where('userId', isEqualTo: _userId)
          .get();

      if (querySnapshot.docs.isEmpty) {
        return [];
      }

      return querySnapshot.docs
          .map((doc) => FlightCalendar.fromJson({
                ...doc.data(),
                'id': doc.id,
              }))
          .toList();
    } catch (e) {
      print('Repository Error: $e');
      rethrow;
    }
  }

  @override
  Future<void> createFlightCalendar(FlightCalendar flightCalendar) async {
    try {
      await _firestore.collection('flightCalendar').doc(flightCalendar.id).set({
        'userId': _userId, // userId 추가
        'createdAt': flightCalendar.createdAt,
        'aircraftRegistration': flightCalendar.aircraftRegistration,
        'totalFlightTime': flightCalendar.totalFlightTime,
        'distance': flightCalendar.distance,
        'history': flightCalendar.history,
      });
    } catch (e) {
      print('Create Error: $e');
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
