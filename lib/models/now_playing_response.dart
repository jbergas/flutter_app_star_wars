// To parse this JSON data, do
//
//     final nowPlayingResponse = nowPlayingResponseFromMap(jsonString);
import 'package:flutter_final_app/models/now_playing_response.dart';
import 'dart:convert';

import 'package:flutter_final_app/models/people.dart';

class NowPlayingResponse {
  NowPlayingResponse({
    required this.count,
    required this.next,
    required this.results,
    required this.previous,
  });

  int count;
  String next;
  dynamic previous;
  List<People> results;

  factory NowPlayingResponse.fromJson(String str) =>
      NowPlayingResponse.fromMap(json.decode(str));

  factory NowPlayingResponse.fromMap(Map<String, dynamic> json) =>
      NowPlayingResponse(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results:
            List<People>.from(json["results"].map((x) => People.fromMap(x))),
      );
}
