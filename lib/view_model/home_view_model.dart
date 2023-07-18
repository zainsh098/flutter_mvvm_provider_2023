import 'package:flutter/cupertino.dart';
import 'package:flutter_mvvm_2023/data/response/api_response.dart';
import 'package:flutter_mvvm_2023/model/movies_model_entity.dart';
import 'package:flutter_mvvm_2023/repositry/home_repositry.dart';

class HomeViewModel with ChangeNotifier {
  final _myRepo = HomeRepositry();
  ApiResponse<MoviesModelEntity> moviesList = ApiResponse.loading();

  Future<void> fetchMoviesListApi() async {
    setMoviesList(ApiResponse<MoviesModelEntity> response) {
      moviesList = response;
      notifyListeners();
    }

    _myRepo.fetchMoviesList().then((value) {
      setMoviesList(ApiResponse.Completed(value));
    }).onError((error, stackTrace) {
      setMoviesList(ApiResponse.error(error.toString()));
    });
  }
}
