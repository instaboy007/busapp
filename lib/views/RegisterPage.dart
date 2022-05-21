import 'package:flutter/material.dart';

import 'package:busapp/widgets/RegisterFormWidget.dart';
import 'package:busapp/widgets/BackgroundWidget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: const <Widget>[
        BackgroundImage(),
        RegisterForm(),
      ]),
    );
  }
}
