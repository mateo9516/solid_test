

import 'package:flutter/material.dart';
import 'package:solid_test/pages/home_page.dart';
import 'package:solid_test/pages/random_color_page.dart';

class Routes{
  static const String home = 'login';
  static const String randomColor = 'randomColor';

  static Map<String, WidgetBuilder> getRoutes(){
    return {
      home: (BuildContext context) => HomePage(),
      randomColor: (BuildContext context) => RandomColorPage(),

    };
  }

  static String start(){
    return home;
  }
}