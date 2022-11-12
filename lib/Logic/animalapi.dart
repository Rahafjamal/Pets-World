import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter_dotenv/flutter_dotenv.dart';

class BetFinderApi {
  Future get(type, storage) async {
    try {
      // Uri myurl =
      //     Uri.parse("https://api.petfinder.com/v2/animals?type=horse&page=1");
      // http.Response myresponse = await http.get(myurl, headers: {
      //   "Authorization": "Bearer ${storage.read(key: "token")}",
      // });
      // var MyData = jsonDecode(myresponse.body);
      // if (MyData['title'] == "Unauthorized") {
      Uri token = Uri.parse("https://api.petfinder.com/v2/oauth2/token");
      http.Response myresponse = await http.post(token, body: {
        "grant_type": "client_credentials",
        "client_id": dotenv.env['CLIENT_ID'],
        "client_secret": dotenv.env['CLIENT_SECRET'],
      });
      print(dotenv.env['CLIENT_ID']);
      var newToken = jsonDecode(myresponse.body);
      var newtoken = newToken['access_token'];
      await storage.write(key: "token", value: newtoken);
      Uri newurl =
          Uri.parse("https://api.petfinder.com/v2/animals?type=${type}&page=1");
      http.Response newresponse = await http
          .get(newurl, headers: {"Authorization": "Bearer $newtoken"});
      var NewData = jsonDecode(newresponse.body);

      return (NewData);
      // }
      // return (MyData);
    } catch (e) {
      print('error is############################### $e');
    }
  }
}

class ChangePagination {
  Future get(page, storage, type) async {
    var token = await storage.read(key: "token");
    Uri myurl =
        Uri.parse("https://api.petfinder.com/v2/animals?type=$type&page=$page");
    http.Response myresponse =
        await http.get(myurl, headers: {"Authorization": "Bearer $token"});
    var MyData = jsonDecode(myresponse.body);
    return (MyData);
  }
}

class FilterAnimal {
  Future get(type, storage, filter, params) async {
    var token = await storage.read(key: "token");
    String Url =
        "https://api.petfinder.com/v2/animals?type=$type&page=1&$params=$filter";
    Uri myurl = Uri.parse(Url);
    http.Response myresponse =
        await http.get(myurl, headers: {"Authorization": "Bearer $token"});
    var MyData = jsonDecode(myresponse.body);
    return (MyData);
  }
}
