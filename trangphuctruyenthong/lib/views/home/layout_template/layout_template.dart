import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../widgets/centered_view/centered_view.dart';
import '../../../widgets/navbar.dart';
import '../../../widgets/navigation_drawer/navigation_drawer.dart';
class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return  ResponsiveBuilder(
      builder: (context, SizingInformation) => Scaffold(
        drawer: SizingInformation.deviceScreenType == DeviceScreenType.mobile
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
                      child: Navigator() )
                ],
              ))),
        ),
      ),
    );
  }
}