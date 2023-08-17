import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:trangphuctruyenthong/views/home/homecontent_desktop.dart';
import 'package:trangphuctruyenthong/views/home/homecontent_mobile.dart';
import 'package:trangphuctruyenthong/widgets/centered_view/centered_view.dart';
import 'package:trangphuctruyenthong/widgets/menu_drawer/menu_drawer.dart';
import 'package:trangphuctruyenthong/widgets/navbar.dart';
import 'package:trangphuctruyenthong/widgets/navigation_drawer/navigation_drawer.dart';

class Homeview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, SizingInformation) => Scaffold(
        drawer: MenuDrawer() == DeviceScreenType.mobile
            ? navigationDrawer()
            : null,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.white,
              Colors.purple,
              Colors.orange,
              Colors.white,
              Colors.white,
            ],
          )),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: CenteredView(
                  child: Column(
                children: <Widget>[
                  navbar(),
                  Expanded(
                      child: ScreenTypeLayout(
                    mobile: HomeContentMobile(),
                    desktop: HomeContentDesktop(),
                  ))
                ],
              ))),
        ),
      ),
    );
  }
}
