import 'package:flutter/material.dart';

class ExerciesRow extends StatelessWidget {
  ExerciesRow({super.key,required this.color,required this.logo,required this.name,required this.colorLogo});
String logo;
String name;
int color;
int colorLogo;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          height: 50,
          decoration: BoxDecoration(
              color: Color(color),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              SizedBox(
                width: 15,
              ),
              ImageIcon(
                AssetImage("assets/images/$logo.png"),
                color: Color(colorLogo),//0xffB692F6
              ),
              SizedBox(
                width: 15,
              ),
              Text(name),
            ],
          )),
    );
  }
}
