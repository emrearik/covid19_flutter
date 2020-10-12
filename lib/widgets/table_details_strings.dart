import 'package:covid19_flutter/models/covid_data.dart';
import 'package:flutter/material.dart';

Widget _tableDetailsStrings(String text, String number) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(text),
      Text(number),
    ],
  );
}

Widget tableDetailsStringsFull(List<CovidData> getirilenCovidData) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "THIS WEEK",
        style: TextStyle(color: Colors.grey),
      ),
      SizedBox(height: 5),
      _tableDetailsStrings("Rate Of Pneumonia in Patients:",
          "% " + getirilenCovidData[0].hastalardaZaturreOran),
      SizedBox(height: 3),
      _tableDetailsStrings("Bed Occupancy Rates:",
          "% " + getirilenCovidData[0].yatakDolulukOrani),
      SizedBox(height: 3),
      _tableDetailsStrings("Adult Intensive Care Occupancy Rates:",
          "% " + getirilenCovidData[0].eriskinYogunBakimDolulukOrani),
      SizedBox(height: 3),
      _tableDetailsStrings("Ventilator Occupancy Rate:",
          "% " + getirilenCovidData[0].ventilatorDolulukOrani),
      SizedBox(height: 3),
      _tableDetailsStrings("Average Infected Detect Time:",
          getirilenCovidData[0].ortalamaTemasliTespitSuresi + " Saat"),
      SizedBox(height: 3),
      _tableDetailsStrings(
          "Fillation Rate:", "% " + getirilenCovidData[0].filyasyonOrani),
      SizedBox(height: 10),
      Text(
        "TOTAL",
        style: TextStyle(color: Colors.grey),
      ),
      _tableDetailsStrings("Tests:", getirilenCovidData[0].toplamTest),
      SizedBox(height: 3),
      _tableDetailsStrings("Patients:", getirilenCovidData[0].toplamVaka),
      SizedBox(height: 3),
      _tableDetailsStrings("Deaths:", getirilenCovidData[0].toplamVefat),
      SizedBox(height: 3),
      _tableDetailsStrings("Patients In Critical Condition:",
          getirilenCovidData[0].agirHastaSayisi),
      SizedBox(height: 3),
      _tableDetailsStrings(
          "Patients Recovered:", getirilenCovidData[0].toplamIyilesen),
      SizedBox(height: 3),
    ],
  );
}
