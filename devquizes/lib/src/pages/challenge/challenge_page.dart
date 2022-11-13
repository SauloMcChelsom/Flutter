import 'package:devquizes/src/pages/challenge/widgets/nex_button/nex_button_widget.dart';
import 'package:devquizes/src/pages/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:devquizes/src/pages/challenge/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChallengePage extends StatefulWidget {
  const ChallengePage({super.key});

  @override
  State<ChallengePage> createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          top: true,
          child: QuestionIndicatorWidget(),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: QuizWidget(title: 'Qual foi a primeira namorada de saulo?')
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: NextButtonWidget.white(
                label:"Pular", 
                onTap: (){
                  Navigator.of(context).pushReplacementNamed('/errorpage');
                },
              )) ,
              SizedBox(width: 15.0),
              Expanded(child: NextButtonWidget.green(
                label:"Confirmar", 
                onTap: (){
                  Navigator.of(context).pushReplacementNamed('/sucesspage');
                },
              )) 
            ]
          ),
        )
      ),
    );
  }
}