import 'dart:async';

import 'package:busapp/views/HomePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:busapp/views/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    home: MyApp()
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  void initState(){
    super.initState();
    loadPage();
  }

  Future<void> loadPage() async {
    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var uid = prefs.getBool('isLoggedIn');
    uid == null? Timer(
      const Duration(seconds: 2),
      () => {
        Navigator.push(context,MaterialPageRoute(
          builder: (context) => const LoginPage()))
      }
    )
    : 
    Timer(
      const Duration(seconds: 2),
      () => {
        Navigator.push(context,MaterialPageRoute(
          builder: (context) => const HomePage()))
      }
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bussify',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: buildBody(),
    );
  }

  Widget buildBody() {
    return const Scaffold(
      body: Center(
        child: Image(
          image: NetworkImage('https://www.seekpng.com/png/full/456-4567733_travel-by-bus-bus-logo-png.png'),
          height: 100,
          width: 100,
        )
      ),
    );
  }
}
