import 'package:covid19_flutter/data/covid_api_client.dart';
import 'package:covid19_flutter/data/covid_repository.dart';
import 'package:covid19_flutter/viewmodel/covid_data_viewmodel.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void SetupLocator() {
  locator.registerLazySingleton(() => CovidApiClient());
  locator.registerLazySingleton(() => CovidRepository());
  locator.registerLazySingleton(() => CovidDataViewModel());
}
