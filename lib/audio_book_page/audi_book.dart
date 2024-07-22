import 'package:exam_str_c11/audio_book_page/pages/home.dart';
import 'package:exam_str_c11/audio_book_page/pages/libaray.dart';
import 'package:exam_str_c11/audio_book_page/pages/search.dart';
import 'package:flutter/material.dart';

class AudiBook extends StatefulWidget {
  static const String routeName = "book";

  AudiBook({super.key});

  @override
  State<AudiBook> createState() => _AudiBookState();
}

class _AudiBookState extends State<AudiBook> {
  PageController controller = PageController(viewportFraction: 0.6);

  List<String> tabs = ["Art", "Business", "Comedy", "Drama"];

int index = 0;

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
              bottomNavigationBar:BottomNavigationBar(
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
