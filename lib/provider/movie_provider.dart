import 'dart:convert';

import 'package:flist/configuration/services.dart';
import 'package:flist/models/movie.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../models/tv.dart';

class MovieProvider extends ChangeNotifier {
  var baseUrl = Service.baseUrl;
  var apiKey = Service.apiKey;

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

  getPopularMovie() async {
    Uri url =
        Uri.parse('$baseUrl/movie/popular?api_key=$apiKey&language=en-US');

    var result = await http.get(url);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body)['results'];
      List<Movie> popularMovies =
          data.map((item) => Movie.fromJson(item)).toList();
      return popularMovies;
    } else {
      return <Movie>[];
    }
  }

  getPopularSeries() async {
    Uri url = Uri.parse('$baseUrl/tv/popular?api_key=$apiKey&language=en-US');

    var result = await http.get(url);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body)['results'];
      List<Tv> popularSeries = data.map((item) => Tv.fromJson(item)).toList();
      return popularSeries;
    } else {
      return <Tv>[];
    }
  }
}
