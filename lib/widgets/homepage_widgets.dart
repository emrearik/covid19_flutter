import 'package:covid19_flutter/pages/prevent_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget homePageCardFull(BuildContext context) {
  return Container(
    width: double.infinity,
    height: 200,
    decoration: BoxDecoration(
      color: Color(0xFF003D64),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Column(
              children: [
                Text(
                  "What To Do \nif You Are Sick ?",
                  style: TextStyle(
                      fontSize: 20, color: Colors.white, fontFamily: 'Poppins'),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PreventPage()));
                    },
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF025790),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Learn More",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(Icons.arrow_forward, color: Colors.white),
                          ],
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: SvgPicture.asset("images/corona_sick.svg"),
        ),
      ],
    ),
  );
}

Widget homePageMiniCard(BuildContext context, Color backgroundColor,
    String cardText, String svgLink) {
  final double containerHeight = 120.0;
  return Container(
    width: MediaQuery.of(context).size.width / 2 - 25,
    padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
    alignment: Alignment.topCenter,
    child: Stack(children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 30),
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          height: containerHeight,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              cardText,
              style: TextStyle(
                  fontSize: 14, color: Colors.white, fontFamily: 'Poppins'),
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.topCenter,
        child: SvgPicture.asset(svgLink, height: containerHeight / 1.65),
      )
    ]),
  );
}
