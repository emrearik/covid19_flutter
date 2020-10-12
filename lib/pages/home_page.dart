import 'package:covid19_flutter/locator.dart';
import 'package:covid19_flutter/pages/contagion_page.dart';
import 'package:covid19_flutter/pages/detail_page.dart';
import 'package:covid19_flutter/pages/prevent_page.dart';
import 'package:covid19_flutter/pages/symptoms_page.dart';
import 'package:covid19_flutter/viewmodel/covid_data_viewmodel.dart';
import 'package:covid19_flutter/widgets/homepage_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Covid-19",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Virus Tracking",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                homePageCardFull(context),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SymptomsPage(),
                          ),
                        );
                      },
                      child: homePageMiniCard(context, Color(0xFFE44E4F),
                          "Symptomps", "images/symptomps_cough.svg"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PreventPage(),
                          ),
                        );
                      },
                      child: homePageMiniCard(context, Color(0xFF6674F1),
                          "Prevent Getting Sick", "images/prevent.svg"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChangeNotifierProvider(
                              create: (context) =>
                                  locator<CovidDataViewModel>(),
                              child: ContagionPage(),
                            ),
                          ),
                        );
                      },
                      child: homePageMiniCard(context, Color(0xFF1A95B6),
                          "Contagion", "images/health_care.svg"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChangeNotifierProvider.value(
                              value: locator<CovidDataViewModel>(),
                              child: DetailsPage(),
                            ),
                          ),
                        );
                      },
                      child: homePageMiniCard(context, Color(0xFFE67E49),
                          "Cases & Latest Updates", "images/corona.svg"),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
