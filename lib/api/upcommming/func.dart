import 'dart:convert';
import 'package:netflix_app/api/upcommming/result.dart';
import 'package:netflix_app/api/upcommming/upcommming.dart';
import 'package:http/http.dart' as http;

Future<List<Result>> getUpcomming() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=2bba544d23346ba3733ccc5ba4a1d3c8'));
  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    final result = Upcommming.fromJson(jsonData);
    if (result.results != null) {
      return result.results!;
    }
  }
  List<Result> empty = [];
  return empty;
}
