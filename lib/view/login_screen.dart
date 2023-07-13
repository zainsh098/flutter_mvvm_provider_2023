import 'package:flutter/material.dart';
import 'package:flutter_mvvm_2023/utils/routes/routes_name.dart';

import '../utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  FocusNode emailFocus=FocusNode();
  FocusNode passsFocus=FocusNode();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: TextFormField(
              controller: _emailcontroller,
              decoration: InputDecoration(
                hintText: 'Email',
                labelText: 'Email',

              ),
              focusNode: emailFocus,
              onFieldSubmitted: (valu)
              {
                FocusScope.of(context).requestFocus(passsFocus);


              },



            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              focusNode: passsFocus,


              controller: _passwordController,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  hintText: 'password',
                  labelText: 'passsword',
                  suffixIcon: Icon(Icons.visibility_off)),
            ),
          ),
        ],
      ),
    ));
  }
}
