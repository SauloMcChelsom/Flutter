import 'package:devquizes/src/core/app_colors.dart';
import 'package:devquizes/src/core/app_text_styles.dart';
import 'package:devquizes/src/core/core.dart';
import 'package:devquizes/src/widgets/progress_indicator_widget.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
   QuizCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(
              color: AppColors.border
            )
          ),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              child: Image.asset(AppImages.blocks),
            ),
            SizedBox(height: 24),
            Text("Gerenciamento de Estado", style: AppTextStyles.heading15),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "3 de 10",
                    style: AppTextStyles.body11,
                  )
                ), 
                Expanded(
                  flex: 2,
                  child: ProgressIndicatorWidget(value: 0.3,)
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}