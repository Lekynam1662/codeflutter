import 'package:flutter/material.dart';
import 'package:trangphuctruyenthong/widgets/navigation_drawer/drawer_item.dart';
import 'package:trangphuctruyenthong/widgets/navigation_drawer/navigation_drawer_header.dart';

class navigationDrawer extends StatelessWidget {
  const navigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 16),
      ]),
      child: Column(
        children: <Widget>[
          navigationDrawerHeader(),
          DrawerItem('Trang Phuc', Icons.videocam),
           DrawerItem('Mon an', Icons.help),
           
        ],
      ),
    );
  }
}
