import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  final Function(int) onTap;
  final int currentIndex;

  BottomNavbar({required this.onTap, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black, // Set background to black
      selectedItemColor: Colors.red, // Color for the selected item
      unselectedItemColor: Colors.grey, // Color for the unselected items
      currentIndex: currentIndex, // Set the current index
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.red), // Red icon
          label: 'Drivers',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group, color: Colors.red), // Red icon
          label: 'Teams',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today, color: Colors.red), // Red icon
          label: 'Schedule',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.newspaper, color: Colors.red), // Red icon
          label: 'News',
        ),
      ],
      onTap: onTap,
    );
  }
}
