import 'package:flutter_mvvm_2023/data/network/BaseApiServices.dart';
import 'package:flutter_mvvm_2023/data/network/NetworkApiService.dart';
import 'package:flutter_mvvm_2023/res/app_url.dart';

class AuthRepository {
  BaseApiServices _apiServices = NetworkApiService();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic reponse =
          await _apiServices.getpostAPiResponse(AppUrl.loginEndPoint, data);
      return reponse;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> registerApi(dynamic data) async {
    try {
      dynamic reponse =
          await _apiServices.getpostAPiResponse(AppUrl.registerAPiEndPoint, data);
      return reponse;
    } catch (e) {
      throw e;
    }
  }
}
