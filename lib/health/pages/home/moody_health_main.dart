import 'dart:ui';

import 'package:exam_str_c11/health/pages/home/home.dart';
import 'package:exam_str_c11/health/pages/profile.dart';
import 'package:exam_str_c11/health/pages/test1.dart';
import 'package:exam_str_c11/health/pages/test2.dart';
import 'package:flutter/material.dart';

class MoodyHealth extends StatefulWidget {
  static const String routeName = "health";

  MoodyHealth({super.key});

  @override
  State<MoodyHealth> createState() => _MoodyHealthState();
}

class _MoodyHealthState extends State<MoodyHealth> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Image.asset("assets/images/logoh.png"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Badge(
              child: Icon(
                Icons.notifications_none_outlined,
                size: 30,
              ),
              smallSize: 12,
              backgroundColor: Color(0xffF04438),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 40,
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          showUnselectedLabels: false,
          selectedItemColor: Color(0xff027A48),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  size: 30,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/2.png",
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/3.png",
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/4.png",
                  ),
                ),
                label: ""),
          ]),
      body: SingleChildScrollView(child: pages[index]),
    );
  }

  List<Widget> pages = [
    HomeScreen(),
    Test1Screen(),
    Test2Screen(),
    ProfileScreen(),
  ];
}
