import 'package:flutter/material.dart';
import '../../navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 73,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(width: screenSize.width / 15),
              InkWell(
                  onHover: (value) {
                    (() {
                      value ? _isHovering[0] = true : _isHovering[0] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Text(
                      'Trang phục',
                      style: TextStyle(
                          color: _isHovering[0]
                              ? Color.fromARGB(255, 1, 30, 53)
                              : Color.fromARGB(255, 1, 5, 8),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Color(0xFF051441),
                      ),
                    )
                  ])),
              SizedBox(width: screenSize.width / 15),
              InkWell(
                  onHover: (value) {
                    (() {
                      value ? _isHovering[1] = true : _isHovering[1] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Text(
                      'Món ăn',
                      style: TextStyle(
                          color: _isHovering[1]
                              ? Color.fromARGB(255, 0, 8, 14)
                              : Color.fromARGB(255, 0, 7, 12),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Color(0xFF051441),
                      ),
                    )
                  ])),
              SizedBox(width: screenSize.width / 15),
              InkWell(
                  onHover: (value) {
                    (() {
                      value ? _isHovering[2] = true : _isHovering[2] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Text(
                      'Di Tích',
                      style: TextStyle(
                          color: _isHovering[2]
                              ? Color.fromARGB(255, 104, 2, 124)
                              : Color.fromARGB(255, 0, 7, 12),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Color(0xFF051441),
                      ),
                    )
                  ])),
              SizedBox(width: screenSize.width / 15),
              InkWell(
                  onHover: (value) {
                    (() {
                      value ? _isHovering[3] = true : _isHovering[3] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Text(
                      '     ',
                      style: TextStyle(
                          color: _isHovering[3]
                              ? Color(0xFF077bd7)
                              : Color(0xFF077bd7),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Color(0xFF051441),
                      ),
                    )
                  ]))
            ],
          )
        ],
      ),
    );
  }
}
