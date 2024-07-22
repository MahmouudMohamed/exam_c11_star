import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'exercies_row.dart';
import 'indicator_pageview.dart';
import 'rows_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "Hello,",style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff371B34)

              ),
              ),
              Text("Mahmoud Ouf",
                style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff371B34)

                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text("How are you feeling today ?",
            style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Color(0xff371B34)
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/love.png",),
              Image.asset("assets/images/cool.png"),
              Image.asset("assets/images/happy.png"),
              Image.asset("assets/images/sad.png"),
            ],
          ),
          SizedBox(

          ),
          RowsTitle(title: "Feature"),
          SizedBox(
            height: 10,
          ),
          IndicatorPageview(),
          SizedBox(
            height: 20,
          ),
          RowsTitle(title: "Exercise"),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ExerciesRow(color: 0xffF9F5FF,
                logo: "relax",
                name: "Relaxation",
                colorLogo: 0xffB692F6,),
              SizedBox(
                width: 15,
              ),
              ExerciesRow(color: 0xffFDF2FA,
                logo: "1",
                name: "Meditation",
                colorLogo: 0xffFAA7E0,),

            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ExerciesRow(color: 0xffFFFAF5,
                logo: "bre",
                name: "Breathing",
                colorLogo: 0xffFEB273,),
              SizedBox(
                width: 15,
              ),
              ExerciesRow(color: 0xffF0F9FF,
                logo: "yoga",
                name: "Yoga",
                colorLogo: 0xff7CD4FD,),
            ],
          ),
        ],
      ),
    );
  }
}
