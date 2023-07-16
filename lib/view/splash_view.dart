

import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
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
