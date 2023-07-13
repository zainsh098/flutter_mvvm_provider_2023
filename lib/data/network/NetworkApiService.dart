import 'dart:convert';
import 'dart:io';

import 'package:flutter_mvvm_2023/data/app_exceptions.dart';
import 'package:flutter_mvvm_2023/data/network/BaseApiServices.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class NetworkApiService extends BaseApiServices {
  @override
  Future getGetapiResponse(String url) async {
    dynamic responseJosn;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
        responseJosn=returnResposne(response);
    } on SocketException {
      throw FetchDataException("No Internet Connection ");
    }
    return responseJosn;
  }

  @override
  Future getpostAPiResponse(String url,dynamic data )  async {
    dynamic responseJosn;
    try {
      Response response = await post(
          Uri.parse(url),
        body: data).timeout(Duration(seconds: 10));
    } on SocketException {
      throw FetchDataException("No Internet Connection ");
    }
    return responseJosn;

  }

  dynamic returnResposne(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      default:
        throw FetchDataException(
            'Error occer While Communcationg with server + with status code' +
                response.statusCode.toString());
    }
  }
}
