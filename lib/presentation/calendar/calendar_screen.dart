import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:lottie/lottie.dart';
import 'package:navida_v2/presentation/calendar/calendar_view_model.dart';
import 'package:navida_v2/domain/model/flight_calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<CalendarViewModel>().loadCalendars();
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CalendarViewModel>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
            child: Lottie.asset(
              'assets/animation/sky.json',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2040, 3, 14),
                  focusedDay: viewModel.state.selectedDate,
                  currentDay: DateTime.now(),
                  calendarFormat: CalendarFormat.month,
                  availableCalendarFormats: const {CalendarFormat.month: '월'},
                  selectedDayPredicate: (day) =>
                      isSameDay(day, viewModel.state.selectedDate),
                  onDaySelected: (selectedDay, focusedDay) {
                    viewModel.setSelectedDate(selectedDay);
                    setState(() {});
                  },
                  eventLoader: (day) {
                    return viewModel.getByDate(day);
                  },
                  calendarStyle: const CalendarStyle(
                    markersMaxCount: 4,
                    markerDecoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                const Divider(height: 1),
                Expanded(
                  child: _buildListView(viewModel),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => viewModel.showCreateDialog(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildListView(CalendarViewModel viewModel) {
    if (viewModel.state.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    final entries = viewModel.getByDate(viewModel.state.selectedDate);

    if (entries.isEmpty) {
      return const Center(
        child: Text(
          "비행 기록을 작성해주세요.",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      );
    }

    return ListView.builder(
      itemCount: entries.length,
      itemBuilder: (context, index) {
        final entry = entries[index];
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListTile(
            title: Text(entry.aircraftRegistration),
            subtitle: Text(entry.history),
            trailing: Text('${entry.totalFlightTime}시간'),
            onTap: () => _showUpdateDialog(context, viewModel, entry),
            onLongPress: () => _showDeleteDialog(context, viewModel, entry),
          ),
        );
      },
    );
  }

  void _showUpdateDialog(
      BuildContext context, CalendarViewModel viewModel, FlightCalendar entry) {
    final aircraftRegistrationController =
        TextEditingController(text: entry.aircraftRegistration);
    final totalFlightTimeController =
        TextEditingController(text: entry.totalFlightTime.toString());
    final distanceController =
        TextEditingController(text: entry.distance.toString());
    final historyController = TextEditingController(text: entry.history);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('항목 수정'),
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
              child: const Text('수정'),
              onPressed: () {
                final currentUser = FirebaseAuth.instance.currentUser;
                if (currentUser == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('로그인이 필요합니다.')),
                  );
                  return;
                }

                final updatedCalendar = FlightCalendar(
                  id: entry.id,
                  userId: currentUser.uid,
                  createdAt: entry.createdAt,
                  aircraftRegistration: aircraftRegistrationController.text,
                  totalFlightTime:
                      double.tryParse(totalFlightTimeController.text) ??
                          entry.totalFlightTime,
                  distance: double.tryParse(distanceController.text) ??
                      entry.distance,
                  history: historyController.text,
                );

                viewModel.update(entry.id!, updatedCalendar);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showDeleteDialog(
      BuildContext context, CalendarViewModel viewModel, FlightCalendar entry) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('삭제 확인'),
          content: const Text('이 항목을 삭제하시겠습니까?'),
          actions: <Widget>[
            TextButton(
              child: const Text('취소'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
              onPressed: () {
                viewModel.delete(entry.id!);
                Navigator.of(context).pop();
              },
              child: const Text('삭제'),
            ),
          ],
        );
      },
    );
  }
}
