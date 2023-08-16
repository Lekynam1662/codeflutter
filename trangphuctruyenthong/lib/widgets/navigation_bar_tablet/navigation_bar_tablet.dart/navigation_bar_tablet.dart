import 'package:flutter/material.dart';

import '../../navarbar_item.dart';
import '../../navbar_logo.dart';
class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavbarItem('Trang phục'),
              SizedBox(width: 60,),
               NavbarItem('Món ăn'),
              SizedBox(width: 60,),
               NavbarItem('Di tích'),
              SizedBox(width: 60,),
              
            ],
          )
        ],
      ),
    );
  }
}