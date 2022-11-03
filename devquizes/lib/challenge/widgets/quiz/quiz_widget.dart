import 'package:devquizes/challenge/widgets/awnser/awnser_widget.dart';
import 'package:devquizes/core/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  QuizWidget({Key? key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24),
          AwnserWidget(
            isRight: false,
            isSelected: true,
            title: 'Possibilita a criação de aplicativo compartilhado nativamente'
          ),
          AwnserWidget(
            isRight: true,
            isSelected: true,
            title: 'Possibilita a criação de aplicativo compartilhado nativamente'
          ),
          AwnserWidget(
            isRight: false,
            isSelected: false,
            title: 'Possibilita a criação de aplicativo compartilhado nativamente'
          ),
        ],
      ),
    );
  }
}