import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_mvvm_2023/repositry/auth_repositry.dart';

class AuthViewModel with ChangeNotifier {
  final _myrepo = AuthRepository();

  Future<void> loginApi(dynamic data, BuildContext context) async {
    _myrepo.loginApi(data).then((value) {
      print(value.toString());
      if(kDebugMode)
        {
          print(value.toString());


        }



    }).onError((error, stackTrace) {

      print(error.toString());

    });
  }
}
