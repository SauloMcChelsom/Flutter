import 'package:devquizes/src/pages/challenge/challenge_page.dart';
import 'package:devquizes/src/pages/congratulations_page.dart';
import 'package:devquizes/src/pages/error_page.dart';
import 'package:devquizes/src/pages/home/home_page.dart';
import 'package:devquizes/src/pages/name_user_page.dart';
import 'package:devquizes/src/pages/splash_page.dart';
import 'package:devquizes/src/pages/all_ready_page.dart';
import 'package:devquizes/src/pages/success_page.dart';
import 'package:devquizes/src/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(),
          darkTheme: ThemeData(), 
          themeMode: ThemeMode.system,
          initialRoute: '/',
          routes: {
            '/': (context) => SplashPage(),
            '/welcomepage': (context) => WelcomePage(),
            '/nameuserpage': (context) => NameUserPage(),
            '/sucesspage': (context) => SucessPage(),
            '/errorpage': (context) => ErrorPage(),
            '/congratulationspage': (context) => CongratulationsPage(),
            '/allreadypage': (context) => AllReadyPage(),
            '/homepage': (context) => HomePage(),
            '/challengepage': (context) => ChallengePage(),
          },
        );
      }
    );
  }
}

class AppController extends ChangeNotifier {
  static AppController instance = AppController();
  bool isDartTheme = false;

  changeTheme(){
    isDartTheme = !isDartTheme;
    notifyListeners();
  }
}