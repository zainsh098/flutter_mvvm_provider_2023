


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_2023/utils/routes/routes_name.dart';
import 'package:flutter_mvvm_2023/view/home_screen.dart';
import 'package:flutter_mvvm_2023/view/login_screen.dart';
import 'package:flutter_mvvm_2023/view/signup_view.dart';

import '../../view/splash_view.dart';

class Routes {


  static Route<dynamic> generateRoute(RouteSettings settings)
  {
    switch(settings.name)
        {
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) => const HomeScreen());
      case RoutesName.login:
          return MaterialPageRoute(builder: (BuildContext context) => const LoginScreen());
      case RoutesName.signup:
        return MaterialPageRoute(builder: (BuildContext context) =>const SignUpView());
      case RoutesName.splash:
        return MaterialPageRoute(builder: (BuildContext context) =>const SplashView());
      default:
        return MaterialPageRoute(builder: (_){
          return const Scaffold(
            body: Center(
              child: Text('No Route Added '),
              
            ),
          );
          
          
        });





    }




  }





}