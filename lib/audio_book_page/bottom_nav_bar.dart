import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
   BottomNavBar ({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
int index=0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/Icon.png"),
              size: 40,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/search.png"),
              size: 40,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/lib.png"),
              size: 40,
            ),
            label: "",
          ),
        ]);
  }
}
