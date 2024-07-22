import 'package:exam_str_c11/audio_book_page/row_category.dart';
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
                      Tab(
                        child: Container(
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF5F5FA)),
                          child: Text("Art",
                              style: GoogleFonts.poppins(
                                  color: Color(0xFF2E2E5D),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                      Tab(
                        child: Container(
                          width: 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF5F5FA)),
                          child: Text("Business",
                              style: GoogleFonts.poppins(
                                  color: Color(0xFF2E2E5D),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                      Tab(
                        child: Container(
                          width: 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF5F5FA)),
                          child: Text("Comedy",
                              style: GoogleFonts.poppins(
                                  color: Color(0xFF2E2E5D),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                      Tab(
                        child: Container(
                          width: 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF5F5FA)),
                          child: Text("Drama",
                              style: GoogleFonts.poppins(
                                  color: Color(0xFF2E2E5D),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
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

