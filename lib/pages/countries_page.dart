

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:solid_test/controllers/countries_list.dart';
import 'package:solid_test/models/country.dart';

class CountriesPage extends StatefulWidget{
  const CountriesPage({Key? key}) : super(key: key);

  static CountriesList countriesList = Get.put(CountriesList());


  @override
  State<CountriesPage> createState() => CountriesPageState();
}


class CountriesPageState extends State<CountriesPage>{

 
  List<Country> _listCountries = CountriesPage.countriesList.listCountriesGet;


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: _listCountries.isEmpty ? 
        Text("No Countries to show"):
        Expanded(
          child: ListView.builder(
            itemCount: _listCountries.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Column(
                  children: <Widget>[
                    Text(_listCountries[index].name, style: const TextStyle(fontWeight: FontWeight.bold),),
                    Text(_listCountries[index].wikiDataId)
                  ],
                ),
              );
            }
            )
          ),
      ),
    );
  }


}