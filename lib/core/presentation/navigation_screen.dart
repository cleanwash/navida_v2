import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

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
            icon: Icon(IconlyBold.home),
            label: 'Main',
            selectedIcon: Icon(
              IconlyBold.home,
              color: Colors.blue,
            ),
          ),
          NavigationDestination(
            icon: Icon(IconlyBold.calendar),
            label: 'calendar',
            selectedIcon: Icon(
              IconlyBold.calendar,
              color: Colors.blue,
            ),
          ),
          NavigationDestination(
            icon: Icon(IconlyBold.game),
            label: 'quiz',
            selectedIcon: Icon(
              IconlyBold.game,
              color: Colors.blue,
            ),
          ),
          NavigationDestination(
            icon: Icon(IconlyBold.notification),
            label: 'notice',
            selectedIcon: Icon(
              IconlyBold.notification,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
