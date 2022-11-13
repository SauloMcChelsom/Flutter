import 'package:devquizes/src/pages/challenge/widgets/awnser/select_awnser_widget.dart';
import 'package:devquizes/src/core/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class QuizWidget extends StatefulWidget {
  final String title;
  QuizWidget({required this.title});


  @override
  State<StatefulWidget> createState() {
    return _QuizWidgetState();
  }
}

class _QuizWidgetState extends State<QuizWidget> {
  var  isRight2 = false;
  var  isSelected2 = false;

  @override
  Widget build(Object contexts) {
    return Container(
      child: Column(
        children: [
          Text(
            widget.title,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24),
          /*SelectAwnserWidget(
            isRight: false,
            isSelected: true,
            title: 'Possibilita a criação de aplicativo compartilhado nativamente'
          ),
          SelectAwnserWidget(
            isRight: true,
            isSelected: true,
            title: 'Possibilita a criação de aplicativo compartilhado nativamente'
          ),*/
          SelectAwnserWidget(
            isRight: false,
            isSelected: false,
            title: 'Maelly'
          ),
          SelectAwnserWidget(
            isRight: false,
            isSelected: false, 
            title: 'Raimuda'
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isRight2 = true;
                isSelected2 = true;
              });
            },
            child:SelectAwnserWidget(
              isRight: isRight2,
              isSelected: isSelected2,
              title: 'Luana'
            ),
          )
        ],
      ),
    );
  }
}