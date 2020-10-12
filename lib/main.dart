import 'package:covid19_flutter/locator.dart';
import 'package:covid19_flutter/pages/detail_page.dart';
import 'package:covid19_flutter/pages/home_page.dart';
import 'package:covid19_flutter/pages/symptoms_page.dart';
import 'package:covid19_flutter/viewmodel/covid_data_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  SetupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => locator<CovidDataViewModel>(),
        child: HomePage(),
      ),
    );
  }
}
