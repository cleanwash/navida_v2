import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:navida_v2/domain/model/calendar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarViewModel extends ChangeNotifier {
  final SharedPreferences prefs;
  List<Calendar> calendarEntries = [];
  DateTime selectedDate = DateTime.now();
  double _totalFlightTime = 0;

  CalendarViewModel({required this.prefs}) {
    _loadCalendarEntries();
    _loadTotalFlightTime();
  }

  double get totalFlightTime => _totalFlightTime;

  void _loadTotalFlightTime() {
    _totalFlightTime = prefs.getDouble('totalFlightTime') ?? 0;
    notifyListeners();
  }

  void _saveTotalFlightTime() {
    prefs.setDouble('totalFlightTime', _totalFlightTime);
  }

  void _calculateTotalFlightTime() {
    _totalFlightTime =
        calendarEntries.fold(0, (sum, entry) => sum + entry.totalFlightTime);
    _saveTotalFlightTime();
    notifyListeners();
  }

  List<Calendar> getByDate(DateTime date) {
    return calendarEntries
        .where((entry) => isSameDay(date, entry.createdAt))
        .toList();
  }

  void _loadCalendarEntries() {
    List<String> stringEntries = prefs.getStringList("calendarEntries") ?? [];
    for (String stringEntry in stringEntries) {
      Map<String, dynamic> jsonMap = jsonDecode(stringEntry);
      Calendar entry = Calendar.fromJson(jsonMap);
      calendarEntries.add(entry);
    }
    _calculateTotalFlightTime();
  }

  void create({
    required String aircraftRegistration,
    required double totalFlightTime,
    required double distance,
    required String text,
    required DateTime createdAt,
  }) {
    Calendar newEntry = Calendar(
      createdAt: createdAt,
      aircraftRegistration: aircraftRegistration,
      totalFlightTime: totalFlightTime,
      distance: distance,
      text: text,
    );

    calendarEntries.add(newEntry);
    _saveCalendarEntries();
    _calculateTotalFlightTime();
    notifyListeners();
  }

  void update(DateTime createdAt, Calendar updatedEntry) {
    int index =
        calendarEntries.indexWhere((entry) => entry.createdAt == createdAt);
    if (index != -1) {
      calendarEntries[index] = updatedEntry;
      _saveCalendarEntries();
      _calculateTotalFlightTime();
      notifyListeners();
    }
  }

  void updateTotalFlightTime(String value) {
    double newTime = double.tryParse(value) ?? 0;
    _totalFlightTime = newTime;
    _saveTotalFlightTime();
    notifyListeners();
  }

  void delete(DateTime createdAt) {
    calendarEntries.removeWhere((entry) => entry.createdAt == createdAt);
    _saveCalendarEntries();
    _calculateTotalFlightTime();
    notifyListeners();
  }

  void _saveCalendarEntries() {
    List<String> stringEntries = calendarEntries.map((entry) {
      Map<String, dynamic> jsonMap = entry.toJson();
      return jsonEncode(jsonMap);
    }).toList();
    prefs.setStringList("calendarEntries", stringEntries);
  }

  void setSelectedDate(DateTime date) {
    selectedDate = date;
    notifyListeners();
  }

  void showCreateDialog(BuildContext context) {
    final TextEditingController aircraftRegistrationController =
        TextEditingController();
    final TextEditingController totalFlightTimeController =
        TextEditingController();
    final TextEditingController distanceController = TextEditingController();
    final TextEditingController textController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('새 항목 추가'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextField(
                  controller: aircraftRegistrationController,
                  decoration: InputDecoration(labelText: '항공기 등록번호'),
                ),
                TextField(
                  controller: totalFlightTimeController,
                  decoration: InputDecoration(labelText: '총 비행 시간'),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: distanceController,
                  decoration: InputDecoration(labelText: '비행 거리'),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: textController,
                  decoration: InputDecoration(labelText: '내용'),
                  maxLines: 3,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('취소'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('추가'),
              onPressed: () {
                create(
                  aircraftRegistration: aircraftRegistrationController.text,
                  totalFlightTime:
                      double.tryParse(totalFlightTimeController.text) ?? 0,
                  distance: double.tryParse(distanceController.text) ?? 0,
                  text: textController.text,
                  createdAt: selectedDate,
                );
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
    notifyListeners();
  }

  void showUpdateDialog(BuildContext context, Calendar entry) {
    notifyListeners();
  }

  void showDeleteDialog(BuildContext context, Calendar entry) {
    notifyListeners();
  }

  void clearControllers(List<TextEditingController> controllers) {
    for (var controller in controllers) {
      controller.clear();
    }
    notifyListeners();
  }

  void setControllers(
      Calendar entry, Map<String, TextEditingController> controllers) {
    controllers['text']?.text = entry.text;
    controllers['aircraftRegistration']?.text = entry.aircraftRegistration;
    controllers['totalFlightTime']?.text = entry.totalFlightTime.toString();
    controllers['distance']?.text = entry.distance.toString();
    notifyListeners();
  }
}
