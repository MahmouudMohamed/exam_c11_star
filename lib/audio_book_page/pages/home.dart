import 'dart:ui';

import 'package:exam_str_c11/audio_book_page/row_category.dart';
import 'package:exam_str_c11/audio_book_page/tab_bar.dart';
import 'package:exam_str_c11/audio_book_page/view_best_seller.dart';
import 'package:exam_str_c11/audio_book_page/view_recommended.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            RowCategory(left: "Categories", right: "See more"),
            SizedBox(
              height: 12,
            ),
            Column(
              children: [
                TabBar(
                    isScrollable: true,
                    labelPadding: EdgeInsetsDirectional.only(end: 25),
                    tabAlignment: TabAlignment.start,
                    indicatorColor: Colors.transparent,
                    dividerColor: Colors.transparent,
                    tabs: [
                      TabBarRow(text: "Art", width: 100),
                      TabBarRow(text: "Business", width: 150),
                      TabBarRow(text: "Comedy", width: 150),
                      TabBarRow(text: 'Drama', width: 150),
                    ]),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            RowCategory(
              left: "Recommended For You",
              right: "See more",
            ),
            SizedBox(
              height: 18,
            ),
            ViewRecommended(),
            SizedBox(
              height: 20,
            ),
            RowCategory(left: "Best Seller", right: "See more"),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 180,
              child: ViewBestSeller(name: "Light Mage", details: "Light Mage"),
            ),
          ],
        ),
      ),
    );
  }
}
