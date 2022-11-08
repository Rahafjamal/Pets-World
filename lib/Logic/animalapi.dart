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
  Future<List<dynamic>> get() async {
    Uri myurl = Uri.parse("https://api.petfinder.com/v2/types");
    http.Response myresponse = await http.get(myurl, headers: {
      "Authorization":
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiJlWjV0YlZTQ0Vja2RCVXNGWW9STmFPNWZDd2F0NWdhVUZTamgxTTducHk5R0YwNFk4diIsImp0aSI6IjdiNmEwNDAwNGMyZGI5ODIwOThiODI5ODNhZTkyZmRhNGI1YjUxYWJkMzNkM2FmNmQ0MDgzODlhYzA3YTVkZjExYjQ3YjAzNTAwNTA2ZTEyIiwiaWF0IjoxNjY3NzYwNjQ1LCJuYmYiOjE2Njc3NjA2NDUsImV4cCI6MTY2Nzc2NDI0NSwic3ViIjoiIiwic2NvcGVzIjpbXX0.Tkmfk660SMoD-pQqcnDnsM9eX_mG8Kx0c-HfjaOXVuuccLFfqhLwmRp75tjS0ZytqcFAWloAPPGOqPr7QkTsUEET0gSgDGTk3-j57-fvPkMsBfmxdJRzfGsZ54-OeXC-t7hOULGePY6noqR6t7buqwm23zOqmtgv_ofAoO-Xukv_U1ycTt1IwpdJn11Jhvqu-w7jPndN9aKRtIVa_RwUF3LBisI0LEL6nf3hdkwJPcBkKVx1ynl_G3jBwq8vbQNI16YJfTCgnt-Il7Z_AGCzXd5RBwcRertvol0vdBoYZX0L_yc_LzU2OCeoMCV3AfoaS1vn3QehZ-bTKlI2vrRMxQ"
    });
    List<dynamic> MyData = jsonDecode(myresponse.body)['types'];
    return (MyData);
  }
}
