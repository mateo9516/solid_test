import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:solid_test/models/country.dart';
import 'package:solid_test/pages/countries_page.dart';
import 'package:solid_test/pages/random_color_page.dart';
import 'package:solid_test/services/http_provider.dart';
import 'package:solid_test/shared/responsive_size.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}



class HomePageState extends State<HomePage>{

  @override
  void initState(){
    _getCountries();

    super.initState();
  }

  @override
  Widget build(BuildContext context){
    ResponsiveSize().init(context);

    final _options = <Tab>[
      const Tab(text: "main",),
      const Tab(text: "plus",)
    ];

    final _optionsPages = <Widget>[
      const Center(child: RandomColorPage()),
      const Center(child: CountriesPage())
    ];


    return DefaultTabController(
      length: _optionsPages.length, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Solid Test"),
          backgroundColor: Colors.deepPurple,
          bottom: TabBar(tabs: _options)
        ),
        body: TabBarView(
          children: _optionsPages),
      )
    );
  }


  Future<void> _getCountries() async{
    final res = await HttpProvider().getCountries();

    
    
    List<dynamic> listJson = jsonDecode(res)['data'];

    List<Country> countries = listJson.map((e) {
      return Country.fromJson(e);
    }).toList();

    CountriesPage.countriesList.listCountriesSet = countries;
  }

}