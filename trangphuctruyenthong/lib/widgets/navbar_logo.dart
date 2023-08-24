import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 100,
        child: Image.network(
          "assets/husc.png",
        ));
  }
}
