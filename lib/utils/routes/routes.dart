


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_2023/utils/routes/routes_name.dart';
import 'package:flutter_mvvm_2023/view/home_screen.dart';

class Routes {


  static MaterialPageRoute generateRoute(RouteSettings settings)
  {
    switch(settings.name)
        {
      case RoutesName.home:
        return MaterialPageRoute(builder: (context) => HomeScreen(),);
      default:
        return MaterialPageRoute(builder: (_){
          return Scaffold(
            body: Center(
              child: Text('No Route Added '),
              
            ),
          );
          
          
        });





    }




  }





}