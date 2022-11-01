import 'package:flutter/material.dart';
import 'package:currency_converter/src/controllers/home_controller.dart';

import '../components/currency_box.dart';

class HomeView extends StatefulWidget {

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  HomeController? homeController;

  @override
  void initState(){
    super.initState();
    homeController = HomeController(toText, fromText);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/logo.png', 
              width: 100, 
              height: 100
            ),
            SizedBox(height: 50),
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Conversor de moedas',
                    ),
                  ],
                ),
              ),
            ),
            CurrencyBox(
              null,  
              homeController!.currencies,  
              toText,
              homeController!.toCurrency,
              (model){
                model!.name;
                setState(() {
                  homeController!.toCurrency = model;
                });
              },
            ),
            SizedBox(height: 50),
            CurrencyBox(           
              null,  
              homeController!.currencies,  
              fromText,
               homeController!.fromCurrency,
              (model){
                model!.name;
                setState(() {
                  homeController!.fromCurrency = model;
                });
              },
            )
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 253, 0, 34),
        onPressed: (){
          homeController!.convert();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_right_alt),
      ), 
    );
  }
}