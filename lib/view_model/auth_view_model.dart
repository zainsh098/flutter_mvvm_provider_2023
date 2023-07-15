import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_mvvm_2023/repositry/auth_repositry.dart';
import 'package:flutter_mvvm_2023/utils/routes/routes_name.dart';
import 'package:flutter_mvvm_2023/utils/utils.dart';

class AuthViewModel with ChangeNotifier {
  final _myrepo = AuthRepository();
  bool _loading=false;

  bool get loading =>_loading;
  void setLoading(bool value )
  {
  _loading=value;
    notifyListeners();

  }

  bool _signUpLoading=false;
  bool get signUpLoading =>_signUpLoading;

  void setSignUpLoading(bool value)
  {
    _signUpLoading=value;
    notifyListeners();


  }






  Future<void> loginApi(dynamic data, BuildContext context) async {

    setLoading(true);
    _myrepo.loginApi(data).then((value) {
      print(value.toString());
      setLoading(false);
      Utils.toastMessage('SucessFully Login');
      Navigator.pushNamed(context, RoutesName.home);

      if(kDebugMode)
        {
          print(value.toString());
          Utils.toastMessage(value.toString());
          setLoading(false);

        }



    }).onError((error, stackTrace) {

      print(error.toString());
      Utils.toastMessage(error.toString());

    });
  }

  Future<void> SignUpApi(dynamic data, BuildContext context) async {

    setLoading(true);
    _myrepo.loginApi(data).then((value) {
      print(value.toString());
      setLoading(false);
      Utils.toastMessage('SucessFully Register');
      Navigator.pushNamed(context, RoutesName.home);

      if(kDebugMode)
      {
        print(value.toString());
        Utils.toastMessage(value.toString());
        setLoading(false);

      }



    }).onError((error, stackTrace) {

      print(error.toString());
      Utils.toastMessage(error.toString());

    });
  }















}
