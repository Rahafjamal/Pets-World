import 'dart:convert';

import 'package:http/http.dart' as http;

class BreakingBad {
  String baseUrl = "https://api.api-ninjas.com/v1";
  Future<List<dynamic>> get() async {
    Uri myurl = Uri.parse(
      "https://api.api-ninjas.com/v1/cats?min_weight=1",
    );
    http.Response myresponse = await http.get(myurl,
        headers: {"X-Api-Key": "Ge5bytRxqbxjh20O48gy6w==SLa4SdIgyxZY3svv"});
    List<dynamic> MyData = jsonDecode(myresponse.body);
    return (MyData);
  }
}

class DogApi {
  String baseUrl = "https://api.api-ninjas.com/v1";
  Future<List<dynamic>> get() async {
    Uri myurl = Uri.parse(
      "https://api.api-ninjas.com/v1/dogs?min_weight=1",
    );
    http.Response myresponse = await http.get(myurl,
        headers: {"X-Api-Key": "Ge5bytRxqbxjh20O48gy6w==SLa4SdIgyxZY3svv"});
    List<dynamic> MyData = jsonDecode(myresponse.body);
    return (MyData);
  }
}

class FishApi {
  Future<List<dynamic>> get() async {
    Uri myurl = Uri.parse(
      "https://www.fishwatch.gov/api/species",
    );
    http.Response myresponse = await http.get(
      myurl,
    );
    List<dynamic> MyData = jsonDecode(myresponse.body);
    return (MyData);
  }
}
