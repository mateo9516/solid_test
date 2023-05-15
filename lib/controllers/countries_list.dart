
import 'dart:convert';

import 'package:get/get.dart';
import 'package:solid_test/models/country.dart';


class CountriesList extends GetxController{

    List<Country> _listCountries = [];

    List<Country> get listCountriesGet => _listCountries;

    set listCountriesSet(List<Country> value){
      _listCountries = value;
    }
}


List<Country> countryFromJson(String str) =>List<Country>.from(json.decode(str).map((x) => Country.fromJson(x)));

