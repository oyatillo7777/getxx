import 'package:get/get.dart';
import 'package:getxx/5-lesson/service/api_service.dart';

import '../data/model/Joke.dart';

class JokesController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getJokes();
  }

  var isLoading = false.obs;
  var jokes = <Joke>[].obs;

  Future<void> getJokes() async {
    changeLoading();
    try {
      final List<Joke> fetchedJokes = await ApiService().getJokes();
      if (fetchedJokes != null) {
        jokes.value = fetchedJokes;
      }
    } catch (error) {
      print('Error while fetching jokes: $error');
    }
    changeLoading();
  }

  void changeLoading() {
    isLoading.toggle();
  }
}