import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:schoolmanag/Screens/LoginPage.dart';

class SpleashScreen extends StatefulWidget {
  const SpleashScreen({Key? key}) : super(key: key);

  @override
  _SpleashScreenState createState() => _SpleashScreenState();
}

class _SpleashScreenState extends State<SpleashScreen> {
  @override
  void initState() {
    // Firebase.initializeApp();

    Timer(Duration(seconds: 8), start);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.27,
            width: MediaQuery.of(context).size.width * 0.35,
            child: const FlareActor(
              "assets/school spleash.flr",
              animation: "start",
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }

  start() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => const MyHomePage(),
        ),
      );
    });
  }
}
