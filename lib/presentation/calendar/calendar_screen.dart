import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:lottie/lottie.dart';

class CalendarScreen extends StatelessWidget {
  CalendarScreen({super.key});

  final TextEditingController textController = TextEditingController();
  final TextEditingController aircraftRegistrationController =
      TextEditingController();
  final TextEditingController totalFlightTimeController =
      TextEditingController();
  final TextEditingController distanceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                  focusedDay: DateTime.now(), // 임시 값
                  calendarFormat: CalendarFormat.month,
                  availableCalendarFormats: const {CalendarFormat.month: '월'},
                  selectedDayPredicate: (day) => false, // 임시 값
                  onDaySelected: (selectedDay, focusedDay) {
                    // 선택 로직 구현 필요
                  },
                ),
                const Divider(height: 1),
                Expanded(
                  child: _buildListView(),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 생성 다이얼로그 로직 구현 필요
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildListView() {
    // 임시로 빈 화면 표시
    return Center(
      child: Text(
        "비행 기록을 작성해주세요.",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
