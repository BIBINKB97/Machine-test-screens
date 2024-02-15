import 'package:flutter/material.dart';
import 'package:machine_test/screens/meetup_screen/meetup_screen/meetup_page.dart';
import 'package:machine_test/utils.dart';

class BottomNavBar
    extends StatefulWidget {
  const BottomNavBar(
      {super.key});

  @override
  State<BottomNavBar>
      createState() =>
          _BottomNavBarState();
}

class _BottomNavBarState
    extends State<
        BottomNavBar> {
  int _selectedIndex =
      2;

  static final List<Widget>
      _widgetOptions =
      <Widget>[
    Text(
        'home'),
    Text(
        'prolet'),
    MeetUpPage(),
    Text(
        'Explore'),
    Text(
        'Account'),
  ];

  void _onItemTapped(
      int index) {
    setState(
        () {
      _selectedIndex =
          index;
    });
  }

  @override
  Widget build(
      BuildContext
          context) {
    return Scaffold(
      body:
          Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar:
          BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined),
            label: 'prolet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.handshake_outlined),
            label: 'Meetup',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.drive_file_move_outline),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kSkyblue,
        showUnselectedLabels: true,
        unselectedItemColor: kblack,
        onTap: _onItemTapped,
      ),
    );
  }
}
