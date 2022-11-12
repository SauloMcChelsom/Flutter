import 'package:flutter/material.dart';
import 'package:devquizes/core/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:devquizes/core/app_colors.dart';

class ErrorPage extends StatelessWidget {
  ErrorPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 70.0),
            Image.asset(AppImages.error),
            SizedBox(height: 30.0),
            Text("Errou :/", style: AppTextStyles.heading40),
            SizedBox(height: 15.0),
            Column(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Text(
                      "É um kit de desenvolvimento de interface de usuáriot",
                      style: AppTextStyles.textTituloQuestion,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.0),
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
              onPressed: (){},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                child: Text("Avançar",
                  style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: AppColors.white
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}