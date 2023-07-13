import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_2023/utils/routes/routes_name.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static toastMessage(String message) {
    Fluttertoast.showToast(
        toastLength: Toast.LENGTH_LONG,
        fontSize: 13,
        backgroundColor: Colors.amber,
        gravity: ToastGravity.TOP,
        msg: message);
  }

  static void flushbarErrorMessage(String message, BuildContext context) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        forwardAnimationCurve: Curves.decelerate,
        reverseAnimationCurve: Curves.easeInOut,
        positionOffset: 20,
        message: message,
        backgroundColor: Colors.deepOrange,
        title: 'Tetxasn',
        messageColor: Colors.green,
        mainButton: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RoutesName.home);
          },
          child: Container(
            height: 100,
            width: 200,
            color: Colors.amberAccent,
            child: Text('Submit '),
          ),
        ),
        duration: Duration(seconds: 10),
      )..show(context),
    );
  }


    static snackBar(String message,BuildContext context)
    {
      return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content:Text(message),
          backgroundColor: Colors.pinkAccent,
            duration: Duration(seconds: 10),


          ));








    }



}
