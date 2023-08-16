import 'package:flutter/material.dart';

class HinhanhTabletDesktop extends StatelessWidget {
  final String title;
  const HinhanhTabletDesktop({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
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
        color: Color.fromARGB(255, 229, 31, 203),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
