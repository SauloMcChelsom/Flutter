import 'package:devquizes/challenge/challenge_page.dart';
import 'package:flutter/material.dart';
import 'package:devquizes/home/home_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      home: ChallengePage(),
    );
  }
}

