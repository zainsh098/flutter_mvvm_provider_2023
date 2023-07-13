import 'package:flutter/material.dart';
import 'package:flutter_mvvm_2023/utils/routes/routes_name.dart';

import '../utils/utils.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
           // Navigator.pushNamed(context, RoutesName.home);
            //Utils.toastMessage('FLutter toast---------');
            //Utils.flushbarErrorMessage('Hi i am FLush bar', context);
            Utils.snackBar('No Inernet Connection', context);

          },

          child: const Text('CLICK'),
        ),
      ),

    );
  }
}
