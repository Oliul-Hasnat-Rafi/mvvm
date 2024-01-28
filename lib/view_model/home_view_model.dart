import 'package:flutter/cupertino.dart';
import 'package:mvvm/data/Responce/api_request.dart';
import 'package:mvvm/model/movies_model.dart';
import 'package:mvvm/respository/movies_respositor.dart';

class HomeViewViewModel with ChangeNotifier {
  final _myRepo = Moviesrespositoy();

  Api_request<movies_model> moviesList = Api_request.loading();

  setMoviesList(Api_request<movies_model> response) async {
    moviesList = await response;
    notifyListeners();
  }

  Future<void> fetchMoviesListApi() async {
    setMoviesList(Api_request.loading());

    _myRepo.getmovieslist().then((value) {
      setMoviesList(Api_request.complect(value));
    }).onError((error, stackTrace) {
      setMoviesList(Api_request.error(error.toString()));
    });
  }
}
