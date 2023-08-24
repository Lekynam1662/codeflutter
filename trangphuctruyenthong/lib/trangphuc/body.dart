import 'package:flutter/material.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .4,
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
               const SizedBox(
                    height: 12,
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
                  const Text("Huế!",
                      style: TextStyle(
                          fontSize: 65,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat-Regular",
                          color: Color.fromARGB(255, 0, 0, 3))),
                  RichText(
                    text: const TextSpan(
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
                  const SizedBox(height: 30,),
                  RichText(
                      text: const TextSpan(
                    text:
                        "Nơi tinh hoa hội tụ, điểm giao thoa giữa hiện đại và cổ kính. ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 1, 0, 10)),
                  )),
               
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

