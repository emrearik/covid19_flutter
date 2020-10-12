import 'package:covid19_flutter/widgets/infopage_widgets.dart';
import 'package:flutter/material.dart';

class ContagionPage extends StatelessWidget {
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
          "Contagion",
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
              infoPageWidgetFull("Contagion of Coronavirus",
                  "Because it's a new illness, we do not know exactly how coronavirus spreads from person to person. Similar viruses are spread in cough droplets."),
              SizedBox(height: 10),
              infoPageListLeft(
                context,
                "Air by cough or sneeze",
                "It can be transmitted by air by coughing and sneezing. So never forget to wear a mask.",
                "images/airVirus.svg",
              ),
              SizedBox(height: 10),
              infoPageListRight(
                context,
                "Contaminated Objects",
                "If you need to touch an object, use gloves if possible. Otherwise, disinfect the object you touch and your hands.",
                "images/touchObject.svg",
              ),
              infoPageListLeft(
                context,
                "Personal Contact",
                "You should pay attention to social distance because not everyone may have the same hygiene quality. Be cautious and stay at home.",
                "images/personalContact.svg",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
