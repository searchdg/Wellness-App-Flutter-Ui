import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        setState(() {
          bottomNavIndex = index;
        });
      },
      currentIndex: bottomNavIndex,
      selectedItemColor: Colors.black,
      items: const [
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.calendar), label: "Today"),
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.dumbbell), label: "Exercise"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ],
    );
  }
}
