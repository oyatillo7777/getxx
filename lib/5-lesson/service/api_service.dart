import 'package:dio/dio.dart';

import '../data/model/Joke.dart';

class ApiService {
  Dio _dio = Dio();

  Future<List<Joke>> getJokes() async {
    try {
      Response response = await _dio.get("https://jsonplaceholder.typicode.com/posts");
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        List<Joke> jokes = data.map((joke) => Joke.fromJson(joke)).toList();
        return jokes;
      }
    } catch (error) {
      print("Error while fetching jokes: $error");
    }
    return []; // Return an empty list in case of errors or non-200 status code
  }
}