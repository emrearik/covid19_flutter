import 'package:covid19_flutter/data/covid_api_client.dart';
import 'package:covid19_flutter/locator.dart';
import 'package:covid19_flutter/models/covid_data.dart';
import 'package:flutter/material.dart';

class CovidRepository {
  CovidApiClient covidApiClient = locator<CovidApiClient>();
  List<CovidData> sonuc = [];

  Future<List<CovidData>> getCovidData() async {
    sonuc = await covidApiClient.getCovidData();
    return sonuc;
  }
}
