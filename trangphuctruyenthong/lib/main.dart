import 'package:flutter/material.dart';
import 'package:trangphuctruyenthong/trangphuc/trainghiem.dart';
import 'package:trangphuctruyenthong/trangphuc/trainghiem1.dart';
import 'package:trangphuctruyenthong/trangphuc/trainghiem2.dart';
import 'package:trangphuctruyenthong/widgets/menu_drawer/menu_drawer.dart';
import 'package:trangphuctruyenthong/widgets/navigation_bar_tablet/navigation_bar_tablet.dart/navigation_bar_tablet.dart';
import 'utils/responsiveLayout.dart';

void main() => runApp(MaterialApp(
      title: 'TrangphuctruyenthongHue',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screensiz = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
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
        appBar: ResponsiveLayout.isSmallScreen(context)
            ? AppBar(
                iconTheme: IconThemeData(color: Color.fromARGB(255, 8, 0, 0)),
                backgroundColor: Color.fromARGB(255, 136, 10, 161),
                elevation: 0,
                centerTitle: true,
                title: const Text(
                  "WelcomeHome",
                  style: TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 0, 5, 8),
                      fontWeight: FontWeight.w200),
                ),
              )
            : PreferredSize(
                child: NavigationBarTabletDesktop(),
                preferredSize: Size(screensiz.width, 200)),
        drawer: MenuDrawer(),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Body(),
              trainghiem(),
              trainghiem1(),
              trainghiem2()
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
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
    return SizedBox(
       width: size.width,
      height: size.height,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .4,
            heightFactor: 0.7,
            child: Padding(
              padding: EdgeInsets.only(right: 40),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    "assets/hue1.jpg",
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
                  Text("Huế!",
                      style: TextStyle(
                          fontSize: 65,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat-Regular",
                          color: Color.fromARGB(255, 0, 0, 3))),
                  RichText(
                    text: TextSpan(
                      text: "Kinh Đô Xưa- ",
                      style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 3, 0, 3)),
                      children: [
                        TextSpan(
                            text: "Trải nghiệm mới",
                            style: TextStyle(
                                fontSize: 38,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 3)))
                      ],
                    ),
                  ),
                  RichText(
                      text: TextSpan(
                    text:
                        "                                                                                                                               Nơi tinh hoa hội tụ, điểm giao thoa giữa hiện đại và cổ kính. ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 1, 0, 10)),
                  )),
                    const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          )
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
            Text(
              "Huế!",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontFamily: "Montserrat-Regular"),
            ),
            RichText(
              text: TextSpan(
                text: 'Kinh Đô Xưa - ',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontFamily: "Montserrat-Regular",
                    fontSize: 35,
                    color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Trải nghiệm mới',
                      style: TextStyle(
                         fontWeight: FontWeight.w800,
                         fontFamily: "Montserrat-Regular",
                          fontSize: 35,
                          color: Colors.black)),
                ],
              ),
            ),
            SizedBox(height: 10,),
            RichText(
                text: TextSpan(
              text:
                  "Nơi tinh hoa hội tụ, điểm giao thoa giữa hiện đại và cổ kính. ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  color: Color.fromARGB(255, 1, 0, 10)),
            )),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    "assets/hue1.jpg",
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
