import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:navida_v2/domain/model/flight_calendar.dart';
import 'package:navida_v2/domain/repository/flight_calendart_repository.dart';
import 'package:navida_v2/presentation/calendar/calendar_state.dart';

class CalendarViewModel extends ChangeNotifier {
  final FlightCalendarRepository _repository;
  CalendarState _state = CalendarState(selectedDate: DateTime.now());
  CalendarState get state => _state;

  CalendarViewModel({
    required FlightCalendarRepository repository,
  }) : _repository = repository {
    loadCalendars();
  }

  Future<void> loadCalendars() async {
    try {
      _state = state.copyWith(isLoading: true);
      notifyListeners();

      final calendars = await _repository.getFlightCalendars();

      if (calendars.isEmpty) {
        _state =
            state.copyWith(calendars: [], totalFlightTime: 0, isLoading: false);
      } else {
        final totalFlightTime = calendars.fold<double>(
          0,
          (sum, entry) => sum + entry.totalFlightTime,
        );

        _state = state.copyWith(
            calendars: calendars,
            totalFlightTime: totalFlightTime,
            isLoading: false);
      }
      notifyListeners();
    } catch (e) {
      _state = state.copyWith(
        isLoading: false,
      );
      notifyListeners();
      print('Error loading calendars: $e');
    }
  }

  List<FlightCalendar> getByDate(DateTime date) {
    return state.calendars.where((entry) {
      final entryDate = entry.createdAt;
      final compareDate = date;

      return entryDate.year == compareDate.year &&
          entryDate.month == compareDate.month &&
          entryDate.day == compareDate.day;
    }).toList();
  }

  Future<void> create(FlightCalendar calendar) async {
    try {
      _state = state.copyWith(isLoading: true);
      notifyListeners();

      await _repository.createFlightCalendar(calendar);
      await loadCalendars();
    } catch (e) {
      _state = state.copyWith(isLoading: false);
      notifyListeners();
      rethrow;
    }
  }

  Future<void> update(String id, FlightCalendar updatedEntry) async {
    try {
      _state = state.copyWith(isLoading: true);
      notifyListeners();

      await _repository.updateFlightCalendar(id, updatedEntry);
      await loadCalendars();
    } catch (e) {
      _state = state.copyWith(isLoading: false);
      notifyListeners();
      print('Error updating calendar entry: $e');
    }
  }

  Future<void> delete(String id) async {
    try {
      _state = state.copyWith(isLoading: true);
      notifyListeners();

      await _repository.deleteFlightCalendar(id);
      await loadCalendars();
    } catch (e) {
      _state = state.copyWith(isLoading: false);
      notifyListeners();
    }
  }

  void setSelectedDate(DateTime date) {
    _state = state.copyWith(selectedDate: date);
    notifyListeners();
  }

  void showCreateDialog(BuildContext context) {
    final aircraftRegistrationController = TextEditingController();
    final totalFlightTimeController = TextEditingController();
    final distanceController = TextEditingController();
    final historyController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('새 항목 추가'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextField(
                  controller: aircraftRegistrationController,
                  decoration: const InputDecoration(labelText: '항공기 등록번호'),
                ),
                TextField(
                  controller: totalFlightTimeController,
                  decoration: const InputDecoration(labelText: '총 비행 시간'),
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                ),
                TextField(
                  controller: distanceController,
                  decoration: const InputDecoration(labelText: '비행 거리'),
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                ),
                TextField(
                  controller: historyController,
                  decoration: const InputDecoration(labelText: '내용'),
                  maxLines: 3,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('취소'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: const Text('추가'),
              onPressed: () async {
                final totalFlightTime =
                    double.tryParse(totalFlightTimeController.text);
                final distance = double.tryParse(distanceController.text);

                if (aircraftRegistrationController.text.isEmpty ||
                    totalFlightTime == null ||
                    distance == null ||
                    historyController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('모든 필드를 올바르게 입력해주세요.')),
                  );
                  return;
                }

                final currentUser = FirebaseAuth.instance.currentUser;
                if (currentUser == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('로그인이 필요합니다.')),
                  );
                  return;
                }

                final docRef = FirebaseFirestore.instance
                    .collection('flightCalendar')
                    .doc();
                final newCalendar = FlightCalendar(
                  id: docRef.id,
                  userId: currentUser.uid,
                  createdAt: state.selectedDate,
                  aircraftRegistration: aircraftRegistrationController.text,
                  totalFlightTime: totalFlightTime,
                  distance: distance,
                  history: historyController.text,
                );

                try {
                  await create(newCalendar);
                  Navigator.of(context).pop();
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('저장 중 오류가 발생했습니다: $e')),
                  );
                }
              },
            ),
          ],
        );
      },
    );
  }
}
