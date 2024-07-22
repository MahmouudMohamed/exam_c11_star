import 'package:flutter/material.dart';

import 'audio_book_page/audi_book.dart';

import 'health/pages/home/moody_health_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:  AudiBook.routeName,
      routes: {
        AudiBook.routeName:(context)=>AudiBook(),
        MoodyHealth.routeName:(context)=>MoodyHealth(),
      },
    );
  }
}
