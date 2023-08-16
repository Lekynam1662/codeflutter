import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class coursedetails extends StatelessWidget {
  const coursedetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, SizingInformation) {
      var textAlignment =
          SizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.center;
      double titleSize =
          SizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 40
              : 60;
      double descriptionSize =
          SizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 21;
      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Huế!",
              style: TextStyle(
                  fontSize: titleSize,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat-Regular",
                  color: Color.fromARGB(255, 0, 0, 3)),
                  textAlign: textAlignment,
            ),
            RichText(
              text: TextSpan(
                text: "Kinh Đô Xưa- ",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 3, 0, 3)),
                children: [
                  TextSpan(
                      text: "Trải nghiệm mới",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 3)))
                ],
              ),
            ),
            RichText(
                text: TextSpan(
              text:
                  "Nơi tinh hoa hội tụ, điểm giao thoa giữa hiện đại và cổ kính. ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: descriptionSize,
                  color: Color.fromARGB(255, 1, 0, 10)),

            )),
          ],
        ),
      );
    });
  }
}
