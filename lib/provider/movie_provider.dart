import 'dart:convert';

import 'package:flist/configuration/services.dart';
import 'package:flist/models/movie.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../models/tv.dart';

class MovieProvider extends ChangeNotifier {
  var baseUrl = Service.baseUrl;
  var apiKey = Service.apiKey;

  final List<Movie> _movie = [];
  final List<Tv> _tv = [];

  List<Movie> get movie => _movie;
  List<Tv> get series => _tv;

  getComingSoonMovie() async {
    var minDate = DateTime.now().toString().substring(0, 10);
    var maxDate = DateTime.now()
        .add(const Duration(days: 30))
        .toString()
        .substring(0, 10);

    Uri url = Uri.parse(
        '$baseUrl/discover/movie?api_key=$apiKey&language=en-US&sort_by=release_date.asc&primary_release_date.gte=$minDate&primary_release_date.lte=$maxDate');

    var result = await http.get(url);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body)['results'];
      List<Movie> movies = data.map((item) => Movie.fromJson(item)).toList();
      return movies;
    } else {
      return <Movie>[];
    }
  }

  getPopularMovie(int page) async {
    Uri url = Uri.parse(
        '$baseUrl/movie/popular?api_key=$apiKey&language=en-US&page=$page');

    var result = await http.get(url);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body)['results'];
      for (var item in data) {
        _movie.add(Movie.fromJson(item));
      }
      return _movie;
    } else {
      return <Movie>[];
    }
  }

  getPopularSeries(int page) async {
    Uri url = Uri.parse(
        '$baseUrl/tv/popular?api_key=$apiKey&language=en-US&page=$page');

    var result = await http.get(url);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body)['results'];
      for (var item in data) {
        _tv.add(Tv.fromJson(item));
      }
      return _tv;
    } else {
      return <Tv>[];
    }
  }
}
