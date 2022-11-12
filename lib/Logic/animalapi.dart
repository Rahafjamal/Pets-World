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
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiJlWjV0YlZTQ0Vja2RCVXNGWW9STmFPNWZDd2F0NWdhVUZTamgxTTducHk5R0YwNFk4diIsImp0aSI6IjhkZDBmMjBjM2Y3N2ZhNzkxMjcxNDVkZTY5Zjg4ZTY2MzI3ZDBhN2UzZWM4ZjExZDY5ZDlmMDM2NjUzOGY2ZWM2OGQ2YmZmMWZlNjk5ZDE5IiwiaWF0IjoxNjY4MjAwNTM4LCJuYmYiOjE2NjgyMDA1MzgsImV4cCI6MTY2ODIwNDEzOCwic3ViIjoiIiwic2NvcGVzIjpbXX0.uv7dxOZHjquAwLTduwyue9iFE6UprvTezmfqYaRsOCOM6S7VxIQudIHda1o5npA25tFGzKrmyvECrtt5SPJgsh8HkWCSRcNbKaudp78sCYSANILSqXgdrSYs7jRLKPYkeB_qzLD-8XudNtx8eqzxbDWv_GyRGQKzNqUvIFXgK4HVoeiEeWbv5j6aYsedfpWOAwJIrbe0CfvDymAVr-Kb5cYhPXxz4vWAmoeLqRkw2AtU9Nb61C08s19Dhr_GA0WwQbVE-HNNTTyE_JOtZe6WyRl3AoMDTH4dZgaYaAg79LGf7zLaVTqxp_m4FkeHcnvQ5fmiHtgWPS6u5jvIjcu7DQ"
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
