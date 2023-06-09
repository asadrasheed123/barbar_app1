import 'package:barbar_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';


import '../../shopdetail.dart';
import '../appointment/appointment_screen.dart';
import '../profile/profile_screen.dart';
import '../reminder/reminder_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    ReminderScreen(),
    Appoitment(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(183, 28, 28, 1),
            icon: Icon(
              (Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(183, 28, 28, 1),
            icon: Icon(Icons.alarm),
            label: 'Reminder',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(183, 28, 28, 1),
            icon: Icon(Icons.calendar_today),
            label: 'Appointments',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(183, 28, 28, 1),
            icon: Icon(Icons.person),
            label: 'Profile',
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
