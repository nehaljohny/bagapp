import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'login.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => LoginPage()));
    });
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                // gradient: LinearGradient(
                //     begin: Alignment.topCenter,
                //     end: Alignment.bottomCenter,
                //     colors: [Colors.white, Colors.blueGrey])
              image: DecorationImage(
               fit: BoxFit.cover,
              image: AssetImage(
               "assets/images/s.png"))
            ),

        ));
  }
}
