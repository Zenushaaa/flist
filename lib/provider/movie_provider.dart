import 'dart:convert';

import 'package:flist/configuration/services.dart';
import 'package:flist/models/genre.dart';
import 'package:flist/models/movie.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../models/cast.dart';

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

  getPopularMovie(int page) async {
    Uri url = Uri.parse(
        '$baseUrl/movie/popular?api_key=$apiKey&language=en-US&page=$page');

    var result = await http.get(url);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body)['results'];
      List<Movie> movies = data.map((item) => Movie.fromJson(item)).toList();
      return movies;
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
      List<Movie> tv = data.map((item) => Movie.fromJson(item)).toList();
      return tv;
    } else {
      return <Movie>[];
    }
  }

  getDetails(int? id, String? type) async {
    Uri url = Uri.parse(
        '$baseUrl/$type/$id?api_key=$apiKey&language=en-US&append_to_response=videos');

    var result = await http.get(url);
    if (result.statusCode == 200) {
      Movie data = Movie.fromJsonMap(jsonDecode(result.body));
      return data;
    } else {
      return [];
    }
  }

  getCast(int? id, String? type) async {
    Uri url =
        Uri.parse('$baseUrl/$type/$id/credits?api_key=$apiKey&language=en-US');

    var result = await http.get(url);
    if (result.statusCode == 200) {
      List data = jsonDecode(result.body)['cast'];
      List<Cast> cast = data.map((item) => Cast.fromJson(item)).toList();
      return cast;
    } else {
      return <Cast>[];
    }
  }

  getSimiliar(int? id, String? type) async {
    Uri url = Uri.parse(
        '$baseUrl/$type/$id/similar?api_key=$apiKey&language=en-US&page=1');

    var result = await http.get(url);
    if (result.statusCode == 200) {
      List data = jsonDecode(result.body)['results'];
      List<Movie> movieSimiliar =
          data.map((item) => Movie.fromJson(item)).toList();
      return movieSimiliar;
    } else {
      return <Movie>[];
    }
  }

  Future<List<Genre>> getGenre() async {
    List<Genre> genre = [];
    Uri url = Uri.parse('$baseUrl/genre/movie/list?api_key=$apiKey');
    var result = await http.get(url);
    if (result.statusCode == 200) {
      var data = jsonDecode(result.body)['genres'];
      for (var element in data) {
        genre.add(Genre.fromJsonMap(element));
      }
      return genre;
    } else {
      return <Genre>[];
    }
  }
}
