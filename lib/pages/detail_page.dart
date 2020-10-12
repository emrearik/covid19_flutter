import 'package:covid19_flutter/viewmodel/covid_data_viewmodel.dart';
import 'package:covid19_flutter/widgets/table_details_strings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  CovidDataViewModel _covidDataViewModel;
  @override
  Widget build(BuildContext context) {
    _covidDataViewModel = Provider.of<CovidDataViewModel>(context);
    return _covidDataViewModel.getirilenCovidData.length == 0
        ? Scaffold(
            body: Center(child: CircularProgressIndicator()),
          )
        : Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Color(0xFF003D64),
              leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios)),
            ),
            backgroundColor: Color(0xFFF2F6F9),
            body: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 200,
                      color: Color(0xFF003D64),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _covidDataViewModel.getirilenCovidData[0].tarih
                                .toString(),
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontFamily: 'Poppins'),
                          ),
                          Text(
                            "Turkey Coronavirus Table",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Total " +
                                _covidDataViewModel
                                    .getirilenCovidData[0].toplamVaka
                                    .toString() +
                                " Patients",
                            style: TextStyle(
                              fontSize: 36,
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Material(
                                borderRadius: BorderRadius.circular(20.0),
                                elevation: 2.0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  width: MediaQuery.of(context).size.width / 2 -
                                      25,
                                  height: 130,
                                  child: Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Column(
                                      children: [
                                        Text(
                                          "DAILY TEST",
                                          style: TextStyle(
                                            fontFamily: 'Poppins-Bold',
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          _covidDataViewModel
                                              .getirilenCovidData[0].gunlukTest,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                            color: Color(0xFF3AB375),
                                          ),
                                        ),
                                        Text(
                                          "DAILY RECOVERED",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          _covidDataViewModel
                                              .getirilenCovidData[0]
                                              .gunlukIyilesen,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                            color: Color(0xFF3AB375),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Material(
                                borderRadius: BorderRadius.circular(20.0),
                                elevation: 2.0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  width: MediaQuery.of(context).size.width / 2 -
                                      25,
                                  height: 130,
                                  child: Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Column(
                                      children: [
                                        Text(
                                          "DAILY CASES",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          _covidDataViewModel
                                              .getirilenCovidData[0].gunlukVaka,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                            color: Color(0xFFFD5A51),
                                          ),
                                        ),
                                        Text(
                                          "DAILY DEATHS",
                                          style: TextStyle(
                                            fontFamily: 'Poppins-Bold',
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          _covidDataViewModel
                                              .getirilenCovidData[0]
                                              .gunlukVefat,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                            color: Color(0xFFFD5A51),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Material(
                            borderRadius: BorderRadius.circular(20.0),
                            elevation: 2.0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              width: MediaQuery.of(context).size.width - 25,
                              height: 290,
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      tableDetailsStringsFull(
                                          _covidDataViewModel
                                              .getirilenCovidData),
                                      SizedBox(height: 5),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
  }
}
