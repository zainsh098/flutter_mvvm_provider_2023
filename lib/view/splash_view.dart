

import 'package:flutter/material.dart';
import 'package:flutter_mvvm_2023/view/services/splash_services.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  SplashServices splashServices=SplashServices();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.checkAuthentication(context);
  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Splash Screen'),),
      body: SafeArea(
        child: Column(
          children: [


            Container(

              height: 40,
              width: 250,
              color: Colors.deepPurple,

            )


          ],



        ),
      ),




    );
  }
}
