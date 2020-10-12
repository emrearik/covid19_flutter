import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget infoPageWidgetFull(String title, String subtitle) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
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
              padding: const EdgeInsets.only(top: 16.0),
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontFamily: 'Poppins'),
                  ),
                  SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget infoPageListLeft(
    BuildContext context, String title, String subtitle, String svgLink) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: SvgPicture.asset(
            svgLink,
            height: 120,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 5),
              Text(
                subtitle,
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget infoPageListRight(
    BuildContext context, String title, String subtitle, String svgLink) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 5),
              Text(
                subtitle,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: SvgPicture.asset(
            svgLink,
            height: 120,
          ),
        ),
      ],
    ),
  );
}
