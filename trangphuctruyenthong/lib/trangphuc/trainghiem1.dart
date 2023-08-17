import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../utils/ResponsiveLayout.dart';
final Uri _url = Uri.parse('https://www.facebook.com/CoPhucHue');
class trainghiem1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      mediumScreen: SmallChild(),
      smallScreen: SmallChild(),
    );
  }
}
  class LargeChild extends StatelessWidget {
    @override  
      Widget build(BuildContext context) {
     final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .5,
           heightFactor: 0.70,
            child: Padding(
              padding: EdgeInsets.only(right: 40),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    "assets/aodai2.jpg",
                    scale: .85,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .5,
            child: Padding(
              padding: EdgeInsets.only(left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Cổ Phục Huế",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat-Regular",
                          color: Color.fromARGB(255, 0, 0, 3))),
                  RichText(
                    text: TextSpan(
                      text:
                          '                                                                                                                                      Địa Chỉ: 48 Thạch Hãn , Huế, Việt Nam ',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 3, 0, 3)),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text:
                          '                                                                                                                                      Hotline: 093 483 48 29',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 3, 0, 3)),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text:
                          "                                                                                                                                       Mở cửa: Luôn mở cửa ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromARGB(255, 1, 0, 10)),
                    ),
                  ),
                       const SizedBox(
                    height: 12,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.white ,
                      ),
                      onPressed: () {
                        launchUrl(_url);
                      },
                      child: const Text(
                        'Xem chi tiết',
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Cổ Phục Huế",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Montserrat-Regular",
                    color: Color.fromARGB(255, 0, 0, 3))),
            RichText(
              text: TextSpan(
                text:
                    '                                                                                                                                      Địa Chỉ: 48 Thạch Hãn , Huế, Việt Nam',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 3, 0, 3)),
              ),
            ),
            RichText(
              text: TextSpan(
                text:
                    '                                                                                                                                      Hotline: 093 483 48 29',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 3, 0, 3)),
              ),
            ),
            RichText(
                text: TextSpan(
              text:
                  "                                                                                                                                       Mở cửa: Luôn mở cửa ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(255, 1, 0, 10)),
            )),
            const SizedBox(
                    height: 12,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.white ,
                      ),
                      onPressed: () {
                        launchUrl(_url);
                      },
                      child: const Text(
                        'Xem chi tiết',
                      )),
                       SizedBox(height: 10,),
            Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    "assets/aodai2.jpg",
                    scale: .85,
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
