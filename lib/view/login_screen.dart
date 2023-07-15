import 'package:flutter/material.dart';
import 'package:flutter_mvvm_2023/res/color.dart';
import 'package:flutter_mvvm_2023/res/components/round_button.dart';

import '../utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
    final height = MediaQuery.of(context).size.height * 1;

    return Scaffold(
        appBar: AppBar(
          title: const Text('LOGIN'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: TextFormField(
                  controller: _emailcontroller,
                  decoration: const InputDecoration(
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
                  return TextFormField(
                    focusNode: passsFocus,
                    controller: _passwordController,
                    obscureText: _obspassword.value,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
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
                  );
                },
              ),
              SizedBox(
                height: height * .1,
              ),
              RoundButton(
                title: 'Login',
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
                  } else {}
                },
              )
            ],
          ),
        ));
  }
}
