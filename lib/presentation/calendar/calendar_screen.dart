import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:lottie/lottie.dart';
import 'package:navida_v2/presentation/calendar/calendar_view_model.dart';

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
          if (viewModel.state.isLoading)
            const Center(
              child: CircularProgressIndicator(),
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
    final entries = viewModel.getByDate(viewModel.state.selectedDate);
    print('Selected date: ${viewModel.state.selectedDate}');
    print('Available entries: ${viewModel.state.calendars.length}');
    print('Filtered entries: ${entries.length}');

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
            onTap: () {
              // 상세보기 또는 수정 다이얼로그 표시
            },
          ),
        );
      },
    );
  }
}
