import 'package:flutter/material.dart';
import 'package:devquizes/core/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:devquizes/core/app_colors.dart';


class CongratulationsPage extends StatelessWidget {
  const CongratulationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40.0),
            Image.asset(AppImages.trophy),
            SizedBox(height: 15.0),
            Text("Parabéns!", style: AppTextStyles.heading40),
            SizedBox(height: 15.0),
            Column(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Text(
                      "Você concluiu",
                      style: AppTextStyles.textTituloQuestion,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Text(
                      "Gerenciamento de Estado",
                      style: AppTextStyles.heading,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Text(
                      "com 6 de 10 acertos",
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
                child: Text("Compartilhar",
                  style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: AppColors.white
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            TextButton(
              onPressed: (){},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                child: Text("Voltar ao inicio",
                  style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: AppColors.purple
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