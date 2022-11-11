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
      "https://www.fishwatch.gov/api/species/Crimson Jobfish",
    );
    http.Response myresponse = await http.get(myurl);
    List<dynamic> MyData = jsonDecode(myresponse.body);
    return (MyData);
  }
}

class BetFinderApi {
  Future get() async {
    Uri myurl =
        Uri.parse("https://api.petfinder.com/v2/animals?type=horse&page=1");
    http.Response myresponse = await http.get(myurl, headers: {
      "Authorization":
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiJlWjV0YlZTQ0Vja2RCVXNGWW9STmFPNWZDd2F0NWdhVUZTamgxTTducHk5R0YwNFk4diIsImp0aSI6ImI4M2IzNmJjODUwZWY0OTA5ZmVkODZiODQ3MmUzZGFmYWViNGU5MTIyZmMxY2NmMGZkNjg5ZWNlNTQ0MGU2YTc3MDc4MjkzYWRmOTE3ZTJlIiwiaWF0IjoxNjY4MTk2MjA4LCJuYmYiOjE2NjgxOTYyMDgsImV4cCI6MTY2ODE5OTgwOCwic3ViIjoiIiwic2NvcGVzIjpbXX0.EvUkVNeKLj28pv4r4XI3QMOEXQ9xdrKiN4m1vcdodsJqB8d1mMHfM-FpCRcrQ97mhZuPMeERPemlfFMDTEshsmuZggd1W1s9eXY-ZDylaAQ9uB4mY6wfEyaKMPtS2h2yRJ7PhfDDasrplwrynqhkvvng7B4bYvaH3DAgUbKUA_hPm-2EFg-7_wIWPpg9t92fsrgNAv89lybu1e7jpgeTVTXX6R66JZPrWuTs95jlQ-AYAUrEiB6yd8uxKoNbceqZLVtBxd9RJFxk6b-pti4IDsSmdKEvM-0MUahKp428QW4Y9UrP0vEP1ALQbiizx6j_tVUh2mZHNZIwHaBxDiULpA"
    });
    var MyData = jsonDecode(myresponse.body);

    return (MyData);
  }
}
class BirdApi {
  Future<List<dynamic>> get() async {
    Uri myurl =
        Uri.parse("https://api.petfinder.com/v2/animals?type=bird&page=1");
    http.Response myresponse = await http.get(myurl, headers: {
      "Authorization":
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiJlWjV0YlZTQ0Vja2RCVXNGWW9STmFPNWZDd2F0NWdhVUZTamgxTTducHk5R0YwNFk4diIsImp0aSI6IjczNDQ2NmIwNjExMzJjZjQxNzM0OGE0OTdkYjhkYjQ3YjFhMmJiYjM0YjBiZjQ4ZWVlNDgwMmEyMzE0NjgxNDRjNWIwMjNiODc3OWUxNmRkIiwiaWF0IjoxNjY3ODQ3NjgzLCJuYmYiOjE2Njc4NDc2ODMsImV4cCI6MTY2Nzg1MTI4Mywic3ViIjoiIiwic2NvcGVzIjpbXX0.Ni2cCf7a4Aehm2upATCt-WMwANcDQScjkcm8FDWcSDt_Ru5D8aJZZJnZ0CFlYQI4AMwXcvu_gwL5o5KuYqTMK0_rSF4D2_ywv7GRve8qmMfQG5BHC5Fnf29l2nc-0iQNEdBQGXcY58cwevz0cjhkcnzKKMh0V7L9b54asTc-I_CoPMw7NcNdW4VTeNOdJzbEaSH5TxyivAI9AI9NoTq3nHBg3IYMxhx1vTqA-j29Vf55h7xQ3EGk1RJ5GOkmTOiRU1koOYoKxZrqDJyxhIltF5VDy41zT3Tnchg77A0ixO9lIlqfjnInackErG3fCCdJXu8d2IXD_FOsGEVd44-z-w"
    });
    List<dynamic> MyData = jsonDecode(myresponse.body)['animals'];
    return (MyData);
  }
}
