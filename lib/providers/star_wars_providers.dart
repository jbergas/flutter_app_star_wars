import 'package:flutter/material.dart';
import 'package:flutter_final_app/models/now_playing_response.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

import '../models/people.dart';

class StarWarsProvider extends ChangeNotifier {
  String _baseUrl = 'https://swapi.dev/api/people/';
  List<People> onDisplayPeople = [];
  StarWarsProvider() {
    this.getOnStarWarsProvider();
  }

  getOnStarWarsProvider() async {
    // This example uses the Google Books API to search for books about http.
    // https://developers.google.com/books/docs/overview
    var url = Uri.parse(_baseUrl);

    // Await the http get response, then decode the json-formatted response.
    final results = await http.get(url);
    final nowPlayingResponse = NowPlayingResponse.fromJson(results.body);
    final onDisplayPeople = nowPlayingResponse.results;
    notifyListeners();
  }
}
