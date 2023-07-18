import 'package:flutter_mvvm_2023/data/network/BaseApiServices.dart';
import 'package:flutter_mvvm_2023/data/network/NetworkApiService.dart';
import 'package:flutter_mvvm_2023/model/movies_model_entity.dart';
import 'package:flutter_mvvm_2023/res/app_url.dart';

class HomeRepositry {
  BaseApiServices _apiServices = NetworkApiService();

  Future<MoviesModelEntity> fetchMoviesList() async {
    try {
      dynamic response =
          await _apiServices.getGetapiResponse(AppUrl.moviesListEndPoint);
      return response=MoviesModelEntity.fromJson(response);
    } catch (e) {
      throw e;
    }
  }
}
