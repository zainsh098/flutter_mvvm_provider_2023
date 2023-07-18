import 'package:flutter/widgets.dart';
import 'package:flutter_mvvm_2023/model/user_model_entity.dart';
import 'package:flutter_mvvm_2023/utils/routes/routes_name.dart';
import 'package:flutter_mvvm_2023/view_model/user_view_model.dart';

class SplashServices {
  Future<UserModelEntity?> getUserData() async {
    return await UserViewModel().getUser();
  }

  void checkAuthentication(BuildContext context) async {
    final userModel = await getUserData();

    if (userModel == null || userModel.token == null || userModel.token!.isEmpty) {
      Navigator.pushNamed(context, RoutesName.login);
    } else {
      print('Authenticated user: $userModel');
      Navigator.pushNamed(context, RoutesName.home);
    }
  }

}

