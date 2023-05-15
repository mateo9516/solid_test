

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
}