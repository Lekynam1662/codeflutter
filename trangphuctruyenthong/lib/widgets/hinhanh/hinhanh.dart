import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:trangphuctruyenthong/widgets/hinhanh/hinhanh_mobile.dart';
import 'package:trangphuctruyenthong/widgets/hinhanh/hinhanh_tabletdesktop.dart';

class hinhanh extends StatelessWidget {
  final String title;
  const hinhanh({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
     mobile: HinhanhMobile(title: title),
     tablet: HinhanhTabletDesktop(title: title),
    );
  }
}
