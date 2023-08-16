import 'package:flutter/material.dart';

class HinhanhMobile extends StatelessWidget {
  final String title;
  const HinhanhMobile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: "Montserrat-Regular",
          color: Colors.black,
        ),
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 212, 31, 229),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
