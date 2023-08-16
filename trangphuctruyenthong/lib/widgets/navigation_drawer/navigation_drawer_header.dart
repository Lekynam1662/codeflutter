import 'package:flutter/material.dart';

class navigationDrawerHeader extends StatelessWidget {
  const navigationDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('skill up now',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 0, 0, 3)),
                  ),
                  Text('Tap HERE',
                  style: TextStyle(color: Colors.black),)
        ],
      ),
    );
  }
}
