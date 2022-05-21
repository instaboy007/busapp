import 'package:flutter/material.dart';

import 'package:busapp/widgets/LoginFormWidget.dart';
import 'package:busapp/widgets/BackgroundWidget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget content = const LoginForm();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: const <Widget>[
        BackgroundImage(),
        LoginForm(),
      ]),
    );
  }
}
