
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mvvm_2023/utils/routes/routes_name.dart';
import 'package:flutter_mvvm_2023/view_model/user_view_model.dart';

import '../../model/user_model_entity.dart';

class SplashServices{

  Future<UserModelEntity > getUserdata() =>UserViewModel().getUser();

  void checkAuthentication(BuildContext context)async
  {


    getUserdata().then((value) {

        if(value.token==null || value.token==" ")
          {

            Navigator.pushNamed(context, RoutesName.login);


          }
        else
          {
            Navigator.pushNamed(context, RoutesName.home);





          }




    }).onError((error, stackTrace) {
        if(kDebugMode)
          {
            print(error.toString());



          }



    });



  }












}