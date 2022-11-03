import 'package:devquizes/core/app_text_styles.dart';
import 'package:devquizes/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  const QuestionIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Questão 04", style: AppTextStyles.textTituloQuestion),
                Text("de 10", style: AppTextStyles.textTituloQuestion) 
              ]
            ),
            SizedBox(height: 16),
            ProgressIndicatorWidget(value: 0.3,)
          ],
        ),
      ),
    );
  }
}