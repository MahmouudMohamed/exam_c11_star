import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewBestSeller extends StatelessWidget {
  String name;
  String details;
  List<String> image = [
    "assets/images/book1.png",
    "assets/images/book2.png",
    "assets/images/book1.png",
    "assets/images/book2.png",
  ];

  ViewBestSeller({super.key, required this.name, required this.details});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(
          width: 5,
        );
      },
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          width: 315,
          height: 114,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xffF5F5FA),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset(
                      image[index],
                      height: 160,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 150,
                height: 155,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: GoogleFonts.poppins(
                            color: Color(0xFF010104),
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    Text(details,
                        style: GoogleFonts.poppins(
                            color: Color(0xFF6A6A8B),
                            fontSize: 12,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              )
            ],
          ),
        );
      },
      itemCount: image.length,
    );
  }
}
