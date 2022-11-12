import 'package:devquizes/challenge/challenge_page.dart';
import 'package:devquizes/splash/splash_page.dart';
import 'package:devquizes/src/views/congratulations_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      home: CongratulationsPage(),
    );
  }
}