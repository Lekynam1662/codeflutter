import 'package:flutter/material.dart';


import '../../widgets/course_details/course_details.dart';
import '../../widgets/hinhanh/hinhanh.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                      children: <Widget>[
                    coursedetails(),
                    Expanded(child: Center(
                      child: hinhanh(title: 'Trải nghiệm ngay'),),)]);
  }
}
