import 'package:flutter/material.dart';
import 'BagApp/Screens/login.dart';
import 'BagApp/Screens/splash.dart';





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

/// main() - To run a program, main function is mandatory
/// runApp() - Attach widget tree to the screen (widget to pixel)
/// build - to create widget tree
///buildContext - used to locate each widget and it's position in a widget tree
