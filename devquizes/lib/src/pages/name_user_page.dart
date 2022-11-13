import 'package:devquizes/src/widgets/oneline_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:devquizes/src/core/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:devquizes/src/core/app_colors.dart';

class NameUserPage extends StatefulWidget {
  @override
  State<NameUserPage> createState() => _NameUserPageState();
}

class _NameUserPageState extends State<NameUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _body(context)
        ],
      )
    );
  }
}

@override
Widget _body(BuildContext context){
  return SingleChildScrollView(
    child: SizedBox(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 80.0),
            Image.asset(
              AppImages.emoji_smile_google,
              width: 80,
              height: 80,
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
                        "Como podemos chamar você?",
                        style: AppTextStyles.heading32,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0, bottom: 10.0),
              child: OnelineTextFieldWidget(),
            ),
            SizedBox(height: 60.0),
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
                Navigator.of(context).pushReplacementNamed('/allreadypage');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                child: Text("Confirmar",
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
    )
  );
}
