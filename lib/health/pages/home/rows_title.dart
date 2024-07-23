import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RowsTitle extends StatelessWidget {
  RowsTitle({super.key, required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.inter(
              color: Color(0xFF344054),
              fontWeight: FontWeight.w600,
              fontSize: 16),
        ),
        InkWell(
            onTap: () {},
            child: Text(
              "See more >",
              style: GoogleFonts.inter(
                  color: Color(0xff027A48),
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            )),
      ],
    );
  }
}
