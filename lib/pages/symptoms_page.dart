import 'package:covid19_flutter/viewmodel/covid_data_viewmodel.dart';
import 'package:covid19_flutter/widgets/homepage_widgets.dart';
import 'package:covid19_flutter/widgets/infopage_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SymptomsPage extends StatelessWidget {
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
          "Symptoms",
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
              infoPageWidgetFull("Symptoms of Coronavirus",
                  "The most common symptoms of COVID-19 are fever, tiredness, and dry cough. Some patients may have aches and pains, nasal congestion, runny nose, sore throat, or diarrhea. These symptoms are usually mild and begin gradually. Also the symptoms may appear 2-14 days after exposure."),
              SizedBox(height: 10),
              infoPageListLeft(
                context,
                "Fever",
                "High Fever – this means you feel hot to touch on your chest or back. It is a common sign and also may appear in 2-10 days if you affected.",
                "images/fever.svg",
              ),
              SizedBox(height: 10),
              infoPageListRight(
                context,
                "Shortness of breath",
                "HDifficulty breathing – Around 1 out of every 6 people who get COVID-19 becomes seriously ill and develops difficulty breathing or shortness of breath.",
                "images/breath.svg",
              ),
              infoPageListLeft(
                context,
                "Cough",
                "Continuous cough – this means coughing a lot for more than an hour, or 3 or more coughing episodes in 24 hours.",
                "images/cough.svg",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
