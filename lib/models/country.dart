

import 'dart:convert';

List<Country> countryFromJson(String str) => List<Country>.from(json.decode(str).map((x) => Country.fromJson(x)));


class Country{
  String code, name, wikiDataId;
  
  Country({ required this.code, required this.name, required this.wikiDataId});
  
  factory Country.fromJson(Map<String, dynamic> json) => Country(
    code: json['code'],
    name: json['name'],
    wikiDataId: json['wikiDataId']
    );
  

}