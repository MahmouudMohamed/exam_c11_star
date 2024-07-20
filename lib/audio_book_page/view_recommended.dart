import 'package:flutter/material.dart';

class ViewRecommended extends StatelessWidget {
   ViewRecommended({super.key});
  List<String> image = [
    "assets/images/book1.png",
    "assets/images/book2.png",
    "assets/images/book1.png",
    "assets/images/book2.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 10,
          );
        },
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Image.asset(
            image[index],
            fit: BoxFit.cover,
          );
        },
        itemCount: image.length,
      ),
    );
  }
}
