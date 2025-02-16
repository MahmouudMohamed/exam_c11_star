import 'package:exam_str_c11/audio_book_page/pages/home.dart';
import 'package:exam_str_c11/audio_book_page/pages/libaray.dart';
import 'package:exam_str_c11/audio_book_page/pages/search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../health/pages/home/moody_health_main.dart';

class AudiBook extends StatefulWidget {
  static const String routeName = "book";

  AudiBook({super.key});

  @override
  State<AudiBook> createState() => _AudiBookState();
}

class _AudiBookState extends State<AudiBook> {
  PageController controller = PageController(viewportFraction: 0.6);

int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                scrolledUnderElevation: 0,
                elevation: 0,
                title: Image.asset("assets/images/Logo.png"),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MoodyHealth.routeName);
                      },
                      icon: Icon(
                        Icons.settings_outlined,
                        color: Color(0Xff4838D1),
                      )),
                ],
              ),
              bottomNavigationBar:BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  selectedLabelStyle: GoogleFonts.poppins(
                    fontSize: 10,
                    color: Color(0xff6A6A8B)
                  ),
                  unselectedItemColor: Color(0xff6A6A8B),
                  selectedItemColor: Color(0xff4838D1),
                  iconSize: 30,
                  
                  currentIndex: index,
                  onTap: (value) {
                    index = value;
                    setState(() {});
                  },

                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home_filled,size: 30,),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("assets/images/search.png"),
                        size: 30,
                      ),
                      label: "Search",
                    ),
                    BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("assets/images/lib.png"),
                      ),
                      label: "Library",
                    ),
                  ]),
              body: page[index]
            ),));
  }

List<Widget>page=[
  Home(),
  Search(),
  Libaray()
];
}
