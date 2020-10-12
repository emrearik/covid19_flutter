import 'package:covid19_flutter/data/covid_repository.dart';
import 'package:covid19_flutter/locator.dart';
import 'package:covid19_flutter/models/covid_data.dart';
import 'package:flutter/material.dart';

enum CovidState {
  InitialCovidDataState,
  CovidDataLoadingState,
  CovidDataLoadedState,
  CovidDataErrorState,
}

class CovidDataViewModel with ChangeNotifier {
  CovidState _state;
  CovidRepository _repository = locator<CovidRepository>();
  List<CovidData> _getirilenCovidData;

  CovidDataViewModel() {
    _getirilenCovidData = [];
    _state = CovidState.InitialCovidDataState;
    covidDataGetir();
  }

  List<CovidData> get getirilenCovidData => _getirilenCovidData;
  CovidState get state => _state;

  set state(CovidState value) {
    _state = value;
    notifyListeners();
  }

  Future<List<CovidData>> covidDataGetir() async {
    try {
      state = CovidState.CovidDataLoadingState;
      _getirilenCovidData = await _repository.getCovidData();
      state = CovidState.CovidDataLoadedState;
    } catch (e) {
      throw e;
      state = CovidState.CovidDataErrorState;
    }
    return _getirilenCovidData;
  }
}
