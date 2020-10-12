import 'package:covid19_flutter/widgets/infopage_widgets.dart';
import 'package:flutter/material.dart';

class PreventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black)),
        title: Text(
          "Prevent",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              infoPageWidgetFull("Prevention of Coronavirus",
                  "There is currently no vaccine to prevent Coronavirus (COVID-19. The best way to prevent illness is to avoid being exposed to this virus."),
              SizedBox(height: 10),
              infoPageListLeft(
                context,
                "Avoid touching face",
                "Hands touch many surfaces and can pick up viruses. So, hands can transfer the virus to your eyes, nose, or mouth and can make you sick..",
                "images/touchFace.svg",
              ),
              SizedBox(height: 10),
              infoPageListRight(
                context,
                "Maintain social distancing",
                "Maintain at least ~1.8 meters (6 feet) distance between yourself & anyone who is coughing or sneezing.",
                "images/socialDistance.svg",
              ),
              infoPageListLeft(
                context,
                "Wash your hands frequently",
                "Wash your hands frequently Regularly and thoroughly clean your hands with an alcohol-based hand rub or wash them with soap and water for at least 20 seconds.",
                "images/washHands.svg",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
