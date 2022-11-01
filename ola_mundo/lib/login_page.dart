import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    String email = 'sss';
    String password = 'sss';

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
        //width: double.infinity,
        //height: double.infinity,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                child:  Image.network(
                  'https://avatars.githubusercontent.com/u/40011042?s=400&u=12b8991b130eb9f10d13b14e2cae33a0222099ff&v=4'
                ),
              ),
              SizedBox(height: 30),
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
              SizedBox(height: 30),
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
              ElevatedButton(
                child: Text("Entrar"),
                onPressed: (){
                  if(email == 'sss' && password == 'sss'){
                    //Navigator.of(context).pushNamed('/home');
                    Navigator.of(context).pushReplacementNamed('/home');
                  }
                }
              )
            ],
          ),
        ),
      ),
      )
    );
  }
}
//https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Logo_TV_2015.png/250px-Logo_TV_2015.png