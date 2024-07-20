import 'package:exam_str_c11/audio_book_page/bottom_nav_bar.dart';
import 'package:exam_str_c11/audio_book_page/home.dart';

import 'package:flutter/material.dart';

class AudiBook extends StatelessWidget {
  static const String routeName = "book";
  PageController controller = PageController(viewportFraction: 0.6);

  AudiBook({super.key});

  List<String> tabs = ["Art", "Business", "Comedy", "Drama"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                elevation: 0,
                title: Image.asset("assets/images/Logo.png"),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings_outlined,
                        color: Color(0Xff4838D1),
                      )),
                ],
              ),
              bottomNavigationBar:BottomNavBar(

              ),
              body: Home()
            ),));
  }

}
