import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:trangphuctruyenthong/widgets/navigation_bar_tablet/navigation_bar_tablet.dart/navigation_bar_tablet.dart';
// ignore: unused_import

class navbar extends StatelessWidget {
  const navbar({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    var mobile2 = null;
    return ScreenTypeLayout(
      mobile: mobile2,
      tablet: NavigationBarTabletDesktop(),
    );
  }
}