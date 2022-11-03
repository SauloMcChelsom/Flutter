import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    String email = 'sss';
    String password = 'sss';

    Widget _body(){
      return SingleChildScrollView(
        child: SizedBox(
        //width: double.infinity,
        //height: double.infinity,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child:  Image.asset('assets/images/logo.png'),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text){
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        onChanged: (text){
                          password = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        child: Container(
                          width: double.infinity,
                          child: Text("Entrar", textAlign: TextAlign.center)
                        ),
                        onPressed: (){
                          if(email == 'sss' && password == 'sss'){
                            //Navigator.of(context).pushNamed('/home');
                            Navigator.of(context).pushReplacementNamed('/home');
                          }
                        }
                      )
                    ]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/background.jpeg', fit: BoxFit.cover),
          ),
          _body()
        ],
      )
    );
  }
}