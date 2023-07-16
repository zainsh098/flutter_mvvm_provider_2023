import 'dart:async';
import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter_mvvm_2023/model/user_model_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserViewModel with ChangeNotifier {
  Future<bool> saveUser(UserModelEntity user) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('token', user.token.toString());
    notifyListeners();

    return true;
  }

  Future<UserModelEntity> getUser() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final String? token = sp.getString('token');
    return UserModelEntity(
      token: token.toString(),
    );
  }

  Future<bool> remove() async{
    final SharedPreferences sp = await SharedPreferences.getInstance();

    return sp.clear();




  }


}
