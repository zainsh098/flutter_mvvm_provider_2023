import 'package:flutter/material.dart';
import 'package:flutter_mvvm_2023/model/user_model_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserViewModel with ChangeNotifier {
  UserModelEntity? _userModel;
  UserModelEntity? get userModel => _userModel;

  Future<bool> saveUser(UserModelEntity user) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final success = await sp.setString('token', user.token ?? '');
    if (success) {
      _userModel = user;
      notifyListeners();
      print('User saved: $user');
      return true;
    } else {
      print('Failed to save user!');
      return false;
    }
  }

  Future<UserModelEntity?> getUser() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final token = sp.getString('token');
    if (token != null) {
      _userModel = UserModelEntity(token: token);
      print('User retrieved: $_userModel');
      return _userModel;
    } else {
      print('No user found in shared preferences!');
      return null;
    }
  }


  Future<bool> removeUser() async {
    try {
      final SharedPreferences sp = await SharedPreferences.getInstance();
      final success = await sp.remove('token');
      if (success) {
        _userModel = null;
        notifyListeners();
        return true;
      }
      return false;
    } catch (e) {
      print('Error removing user: $e');
      return false;
    }
  }
}
