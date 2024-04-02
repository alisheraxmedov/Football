// class SoccerMatch {
//   Fixture fixture;
//   Team home;
//   Team away;
//   Goal goal;
//   SoccerMatch({
//     required this.fixture,
//     required this.home,
//     required this.away,
//     required this.goal,
//   });

//   factory SoccerMatch.fromJson(Map<String, dynamic> json) {
//     return SoccerMatch(
//       fixture: Fixture.fromJson(json['fixture']),
//       home: Team.fromJson(json['teams']['home']),
//       away: Team.fromJson(json['teams']['away']),
//       goal: Goal.fromJson(json['goals']),
//     );
//   }
// }

// class Fixture {
//   int id;
//   String date;
//   Status status;
//   Fixture({
//     required this.id,
//     required this.date,
//     required this.status,
//   });

//   factory Fixture.fromJson(Map<String, dynamic> json) {
//     return Fixture(
//       id: json['id'],
//       date: json['date'],
//       status: Status.fromJson(json['status'],),
//     );
//   }
// }

// class Status {
//   int elapsedTime;
//   String long;
//   Status({
//     required this.elapsedTime,
//     required this.long,
//   });

//   factory Status.fromJson(Map<String, dynamic> json) {
//     return Status(
//       elapsedTime: json['elapsed'],
//       long: json['long'],
//     );
//   }
// }

// class Team {
//   int id;
//   String name;
//   String logoUrl;
//   bool winner;
//   Team({
//     required this.id,
//     required this.name,
//     required this.logoUrl,
//     required this.winner,
//   });

//   factory Team.fromJson(Map<String, dynamic> json) {
//     return Team(
//       id: json['id'],
//       name: json['name'],
//       logoUrl: json['logo'],
//       winner: json['winner'],
//     );
//   }
// }

// class Goal {
//   int home;
//   int away;
//   Goal({
//     required this.home,
//     required this.away,
//   });

//   factory Goal.fromJson(Map<String, dynamic> json) {
//     return Goal(
//       home: json['home'],
//       away: json['away'],
//     );
//   }
// }

class FootballModel {
  final String date;
  final String refere;

  final Map<String, dynamic> venue;
  final Map<String, dynamic> status;
  final Map<String, dynamic> league;
  final Map<String, dynamic> home;
  final Map<String, dynamic> away;
  final Map<String, dynamic> goals;
  final Map<String, dynamic> scoreHalfTime;
  final Map<String, dynamic> scoreFullTime;
  final Map<String, dynamic> scoreExtraTime;
  final Map<String, dynamic> scorePenalty;

  FootballModel({
    required this.date,
    required this.refere,
    required this.venue,
    required this.status,
    required this.league,
    required this.home,
    required this.away,
    required this.goals,
    required this.scoreHalfTime,
    required this.scoreFullTime,
    required this.scoreExtraTime,
    required this.scorePenalty,
  });

  factory FootballModel.fromJson(Map<String, dynamic> json) {
    return FootballModel(
      date: json["fixture"]["date"],
      refere: json["fixture"]["referee"],
      venue: json["fixture"]["venue"],
      status: json["fixture"]["status"],
      league: json["league"],
      home: json["teams"]["home"],
      away: json["teams"]["away"],
      goals: json["goals"],
      scoreHalfTime: json["score"]["halftime"],
      scoreFullTime: json["score"]["fulltime"],
      scoreExtraTime: json["score"]["extratime"],
      scorePenalty: json["score"]["penalty"],
    );
  }
}
