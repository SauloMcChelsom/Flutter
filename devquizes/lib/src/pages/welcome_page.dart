import 'package:flutter/material.dart';
import 'package:devquizes/src/core/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:devquizes/src/core/app_colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30.0),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      child: Text(
                        "Gerencie suas plantas de forma fácil",
                        style: AppTextStyles.heading32,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              AppImages.mascotte,
               width: 150,
               height: 150,
               fit:BoxFit.fill
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0, bottom: 40.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      child: Text(
                        "Não esqueça mais de regar suas plantas. Nós cuidamos de lembrar você sempre que precisar.",
                        style: AppTextStyles.textTituloQuestion,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.purple),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )),
                side: MaterialStateProperty.all(BorderSide(
                  color: AppColors.purple
                ))
              ),
              onPressed: (){
                Navigator.of(context).pushReplacementNamed('/nameuserpage');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Icon(Icons.arrow_forward_ios, color: AppColors.white),
              ),
            ),
          ]
        ),
      ),
    );
  }
}