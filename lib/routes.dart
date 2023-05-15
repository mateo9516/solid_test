

import 'package:flutter/material.dart';
import 'package:solid_test/pages/countries_page.dart';
import 'package:solid_test/pages/home_page.dart';
import 'package:solid_test/pages/random_color_page.dart';

class Routes{
  static const String home = 'login';
  static const String randomColor = 'randomColor';
  static const String countries = 'countries';

  static Map<String, WidgetBuilder> getRoutes(){
    return {
      home: (BuildContext context) => HomePage(),
      randomColor: (BuildContext context) => RandomColorPage(),
      countries: (BuildContext context) => CountriesPage()

    };
  }

  static String start(){
    return home;
  }
}