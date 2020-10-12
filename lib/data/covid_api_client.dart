import 'dart:convert';
import 'package:covid19_flutter/models/covid_data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CovidApiClient {
  static const baseURL = "https://covid19.saglik.gov.tr/covid19api";
  final http.Client httpClient = http.Client();

  Future<List<CovidData>> getCovidData() async {
    final covidDataURL = baseURL + "?getir=liste";
    final covidDataResponse = await httpClient.get(covidDataURL);
    if (covidDataResponse.statusCode != 200) {
      throw Exception("Covid Data Failed");
    }
    return await (json.decode(covidDataResponse.body) as List)
        .map((tekGonderiCovidData) => CovidData.fromJson(tekGonderiCovidData))
        .toList();
  }
}
