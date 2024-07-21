import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarRow extends StatelessWidget {
   TabBarRow({super.key,required this.text,required this.width});
String text;
double width;
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffF5F5FA)),
        child: Text(text,
            style: GoogleFonts.poppins(
                color: Color(0xFF2E2E5D),
                fontSize: 16,
                fontWeight: FontWeight.w400)),
      ),
    );
  }
}
