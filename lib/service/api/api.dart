// import 'dart:convert';

// import 'package:http/http.dart';
// import 'package:soccer/service/model/model.dart';

// class SoccerApi {
//   final String apiUrl =
//       "https://v3.football.api-sports.io/fixtures?season=2020&league=39";
//   static const headers = {
//     'x-rapidapi-host': "v3.football.api-sports.io",
//     'x-rapidapi-key': "a92518692fa8509f5e85e0c123c884d8"
//   };

//   Future<List<SoccerMatch>> getAllMatches() async {
//     print("Start");

//     Uri url = Uri.https("v3.football.api-sports.io", "fixtures", {
//       "season": "2020",
//       "league": "39",
//     });
//     Response res = await get(
//       url,
//       headers: headers,
//     );
//     print("Bodydan keyin");
//     List<SoccerMatch> matches = [];
//     print("Listdan keyin");
//     print(res.statusCode);
//     if (res.statusCode == 200) {
//       Map<String, dynamic> body = jsonDecode(res.body);
//       Map<String, dynamic> _body = json.decode(res.body);
//       print(1);
//       List<dynamic> matchesList = body['response'];
//       print(2);
//       // List<SoccerMatch> _matches = matchesList
//       //     .map((dynamic item) => SoccerMatch.fromJson(item))
//       //     .toList();
//       print(3);
//     } else {
//       print("Status code: ${res.statusCode}");
//     }
//     return matches;
//   }
// }

import 'dart:convert';

import 'package:http/http.dart';
import 'package:soccer/service/model/model.dart';

class SoccerApi {
  final String apiUrl =
      "https://v3.football.api-sports.io/fixtures?date=2024-04-01";
  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "2bf4554694aba1bcddd43a436bdcd715"
  };

  Future<List<FootballModel>> getAllMatches() async {
    print("Start");
//===================== |Url| =====================
    Uri url = Uri.https(
      "v3.football.api-sports.io",
      "fixtures",
      {
        "season": "2020",
        "league": "39",
      },
    );
//===================== |Response| =====================
    Response res = await get(
      url,
      headers: headers,
    );
//===================== |Decode| =====================
    Map<String, dynamic> body = jsonDecode(res.body);
//===================== |List| =====================
    List<FootballModel> matches = [];
    // print("Response: ${body["response"]}");
//===================== |Add element in list| =====================
    if (res.statusCode == 200) {
      for (int i = 0; i < body["response"].length; i++) {
        matches.add(
          FootballModel.fromJson(
            body["response"][i],
          ),
        );
      }
      // List<dynamic> matchesList = body["response"];
      // List<SoccerMatch> matches = matchesList
      //     .map((dynamic item) => SoccerMatch.fromJson(item))
      //     .toList();
      // return matches;
    } else {
      print("Status code: ${res.statusCode}");
    }
    return matches;
  }
}
