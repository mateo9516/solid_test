

import 'dart:convert';
import 'dart:developer';

import 'package:solid_test/shared/constants.dart';
import 'package:http/http.dart' as http;

class HttpProvider{

  static HttpProvider? _instance;

  HttpProvider._createInstance();

  factory HttpProvider(){
    _instance ??= HttpProvider._createInstance();

    return _instance!;
  }

  Map<String, String> _getHeaders(){
      return {
        'X-RapidAPI-Key': "d7ebdffea6msh8704a5183158c8fp13ef06jsnc48b345b8b6b",
        'X-RapidAPI-Host': "wft-geo-db.p.rapidapi.com"
      };
  }


  Future<String> getCountries() async {
    Uri urlPath = Uri(
      scheme: Constants.server_scheme,
      host: Constants.server_host,
      path: '/v1/geo/countries'
    );

    try{

      final response = await http.get(urlPath, headers: _getHeaders()).timeout(const Duration(seconds: 30));
      log(response.body);
      
      return response.body;
      
    }catch(error){
      return Future.error(error);
    }
  }

}