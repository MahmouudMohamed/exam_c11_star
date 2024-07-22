import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IndicatorPageview extends StatelessWidget {
  IndicatorPageview({super.key});

  List<String> data = [
    "assets/images/first.png",
    "assets/images/first.png",
    "assets/images/first.png",
    "assets/images/first.png"
  ];
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          child: PageView.builder(
              controller: controller,
              itemBuilder: (context, index) {
                return Image.asset(
                  data[index % data.length],
                  fit: BoxFit.fitWidth,
                );
              }),
        ),
        Center(
          child: SmoothPageIndicator(
            controller: controller,
            count: data.length,
            effect: WormEffect(
              dotWidth: 10,
              dotHeight: 10,
              activeDotColor: Colors.teal,
            ),
          ),
        ),
      ],
    );
  }
}
