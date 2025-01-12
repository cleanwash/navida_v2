import 'package:flutter/material.dart';

class NavigationScreen extends StatelessWidget {
  final Widget body;
  final int currentPageIndex;
  final void Function(int index) onChangeIndex;

  const NavigationScreen({
    super.key,
    required this.body,
    required this.currentPageIndex,
    required this.onChangeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        indicatorColor: Colors.transparent,
        onDestinationSelected: onChangeIndex,
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Main',
          ),
          NavigationDestination(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'calendar',
          ),
          NavigationDestination(
            icon: Icon(Icons.quiz),
            label: 'quiz',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_none),
            label: 'notice',
          ),
        ],
      ),
    );
  }
}
