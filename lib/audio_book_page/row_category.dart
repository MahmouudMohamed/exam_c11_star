import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RowCategory extends StatelessWidget {
  String left;
  String right;
   RowCategory({super.key,required this.left,required this.right});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(left,
            style: GoogleFonts.poppins(
                color: Color(0xFF010104),
                fontSize: 16,
                fontWeight: FontWeight.w400)),
        InkWell(
          onTap: () {},
          child: Text(right,
              style: GoogleFonts.poppins(
                  color: Color(0xFF4838D1),
                  fontSize: 14,
                  fontWeight: FontWeight.w400)),
        ),
      ],
    );
  }
}
