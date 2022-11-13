import 'package:flutter/material.dart';
import 'package:devquizes/src/core/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:devquizes/src/core/app_colors.dart';

class AllReadyPage extends StatelessWidget {
  const AllReadyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 80.0),
            Image.asset(
              AppImages.emoji_show_google,
              width: 80,
              height: 80,
              fit:BoxFit.fill
            ),
            SizedBox(height: 30.0),
            Text("Prontinho", style: AppTextStyles.heading32),
            SizedBox(height: 15.0),
            Column(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Text(
                      "Agora vamos começar a cuidar das suas plantinhas com muito cuidado.",
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
              onPressed: (){
                Navigator.of(context).pushReplacementNamed('/homepage');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                child: Text("Começar",
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