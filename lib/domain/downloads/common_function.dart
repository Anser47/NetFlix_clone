import 'dart:convert';

import 'package:netflix_app/domain/model/common_model/result.dart';
import 'package:http/http.dart' as http;

import '../model/common_model/common_model.dart';

Future<List<Result>> getRelese() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/now_playing?api_key=2bba544d23346ba3733ccc5ba4a1d3c8'));
  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    final result = CommonModel.fromJson(jsonData);
    if (result.results != null) {
      return result.results!;
    }
  }

  List<Result> empty = [];
  return empty;
}

// https://api.themoviedb.org/3/movie/popular?api_key=2bba544d23346ba3733ccc5ba4a1d3c8
Future<List<Result>> getTrending() async {
  final response = await http.get(
    Uri.parse(
        'https://api.themoviedb.org/3/movie/top_rated?api_key=2bba544d23346ba3733ccc5ba4a1d3c8'),
  );
  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    final result = CommonModel.fromJson(jsonData);
    if (result.results != null) {
      return result.results!;
    }
  }

  List<Result> empty = [];
  return empty;
}

Future<List<Result>> getTopTen() async {
  final response = await http.get(
    Uri.parse(
        'https://api.themoviedb.org/3/trending/tv/day?api_key=2bba544d23346ba3733ccc5ba4a1d3c8'),
  );
  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    final result = CommonModel.fromJson(jsonData);
    if (result.results != null) {
      return result.results!;
    }
  }

  List<Result> empty = [];
  return empty;
}

Future<List<Result>> getTenseDrama() async {
  final response = await http.get(
    Uri.parse(
        'https://api.themoviedb.org/3/tv/top_rated?api_key=2bba544d23346ba3733ccc5ba4a1d3c8'),
  );
  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    final result = CommonModel.fromJson(jsonData);
    if (result.results != null) {
      return result.results!;
    }
  }

  List<Result> empty = [];
  return empty;
}

Future<List<Result>> getOnAir() async {
  final response = await http.get(
    Uri.parse(
        'https://api.themoviedb.org/3/tv/top_rated?api_key=2bba544d23346ba3733ccc5ba4a1d3c8'),
  );
  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    final result = CommonModel.fromJson(jsonData);
    if (result.results != null) {
      return result.results!;
    }
  }

  List<Result> empty = [];
  return empty;
}
