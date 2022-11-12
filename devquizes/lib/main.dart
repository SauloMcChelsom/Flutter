import 'package:devquizes/challenge/challenge_page.dart';
import 'package:devquizes/splash/splash_page.dart';
import 'package:devquizes/src/views/name_user_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

/*class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      home: NameUserPage(),
    );
  }
} */

class AppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => NameUserPage(),
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