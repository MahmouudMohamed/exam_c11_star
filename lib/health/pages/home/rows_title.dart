import 'package:flutter/material.dart';

class RowsTitle extends StatelessWidget {
   RowsTitle({super.key,required this.title});
   String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        InkWell(
          onTap: () {
          },
            child: Text("See more >",
              style: TextStyle(
          color: Color(0xff027A48)
        ),)),
      ],
    );
  }
}
