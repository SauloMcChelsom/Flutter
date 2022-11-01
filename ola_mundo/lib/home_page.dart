import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var counter = 0;
  bool isDartTheme = false;

  @override
  Widget build(Object contexts) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                  'https://avatars.githubusercontent.com/u/40011042?s=400&u=12b8991b130eb9f10d13b14e2cae33a0222099ff&v=4'
                ),
              ),
              accountName: Text('Saulo McChelsom'), 
              accountEmail: Text('saulo@mail.com')
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('tela de inicio'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              subtitle: Text('Finalizar sessão'),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          CustomSwitch()
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
        //scrollDirection: Axis.horizontal,
        children: [        
          Text('Contador: $counter'),
          CustomSwitch(),
          Container(width: 50, height: 200, color: Colors.black),
          Container(width: 50, height: 200, color: Colors.blue),
          Container(width: 50, height: 200, color: Colors.green),
          Container(width: 50, height: 200, color: Colors.yellow)
        ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            counter++;
          });
        }
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value){
        AppController.instance.changeTheme();
      },
    );
  }
}