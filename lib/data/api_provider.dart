import 'dart:convert';
import 'dart:html';
import 'package:coba1/model/popular_movies.dart';
import 'package:http/http.dart' show Client, Response;
import '../model/popular_movies.dart';

class ApiProvider {
  String apiKey = '5a03a1ab62e4d526b4135a48627b6f3b';
  String baseUrl = 'https://api.themoviedb.org/3';

  Client client = Client();

  Future<PopularMovies> getPopularMovies() async {
    // String url = '$baseUrl/movie/popular?api_key=$apikey';
    // print(url);
    Response response =
    await client.get(Uri.parse('$baseUrl/movie/popular?api_key=$apiKey'));

    if (response.statusCode == 200) {
      return PopularMovies.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(response.statusCode);
    }
  }
}