import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../res/color.dart';
import '../res/components/round_button.dart';
import '../utils/routes/routes_name.dart';
import '../utils/utils.dart';
import '../view_model/auth_view_model.dart';



class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();


}

class _SignUpViewState extends State<SignUpView> {

  ValueNotifier<bool> _obspassword = ValueNotifier<bool>(true);

  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  FocusNode emailFocus = FocusNode();
  FocusNode passsFocus = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _emailcontroller.dispose();
    _passwordController.dispose();
    emailFocus.dispose();
    passsFocus.dispose();
    _obspassword.dispose();
  }








  @override
  Widget build(BuildContext context) {


    final authViewModel = Provider.of<AuthViewModel>(context);

    final height = MediaQuery.of(context).size.height * 1;

    return Scaffold(
        appBar: AppBar(
          title: const Text('SIGNUP '),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),

                child: TextFormField(
                  controller: _emailcontroller,
                  decoration:  InputDecoration(

                    enabled: true,
                    filled: true,
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.deepOrange

                      ),
                      borderRadius: BorderRadius.circular(16),

                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),


                    ),







                    hintText: 'Email',
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                  focusNode: emailFocus,
                  onFieldSubmitted: (valu) {
                    Utils.fieldFocusChange(context, emailFocus, passsFocus);
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ValueListenableBuilder(
                valueListenable: _obspassword,
                builder: (context, value, child) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(


                      focusNode: passsFocus,
                      controller: _passwordController,
                      obscureText: _obspassword.value,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        enabled: true,
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepOrange

                          ),
                          borderRadius: BorderRadius.circular(16),
                          
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),


                        ),

                        hintText: 'password',
                        labelText: 'passsword',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              _obspassword.value = !_obspassword.value;
                            },
                            child: Icon(_obspassword.value
                                ? Icons.visibility_off
                                : Icons.visibility)),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: height * .1,
              ),
              Consumer<AuthViewModel>(builder: (context, child, value) {
                return RoundButton(
                  loading: authViewModel.signUpLoading,
                  title: 'Signup ',
                  color: AppColors.amberColor,
                  onPress: () {
                    if (_emailcontroller.text.isEmpty) {
                      Utils.flushbarErrorMessage('Enter Email please', context);
                    } else if (_passwordController.text.isEmpty) {
                      Utils.flushbarErrorMessage(
                          'Enter Password please', context);
                    } else if (_passwordController.text.length < 6) {
                      Utils.flushbarErrorMessage(
                          'Please Enter Passowrd <6 ', context);
                    } else {
                      Map data = {
                        'email': _emailcontroller.text.toString(),
                        'password': _passwordController.text.toString()
                      };
                      authViewModel.SignUpApi(data, context);
                    }
                  },
                );
              }),

              SizedBox(height: height *.001,),
              TextButton(onPressed: () {
                Navigator.pushNamed(context, RoutesName.signup);


              }, child: Text("Don't Have an account? SignUP?"))



            ],
          ),
        ));
  }
}
