import 'package:flutter/material.dart';
import 'package:trangphuctruyenthong/widgets/course_details/course_details.dart';
import 'package:trangphuctruyenthong/widgets/hinhanh/hinhanh.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        coursedetails(),
        SizedBox(
          height: 10,
        ),
        hinhanh(title: 'Trai nghiem ngay'),
      ],
    );
  }
}
