import 'package:devquizes/src/core/app_colors.dart';
import 'package:devquizes/src/core/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AwnserWidget extends StatelessWidget {
  final String title;
  final bool isRight;
  final bool isSelected;

  AwnserWidget({
    Key? key, 
    required this.title,
    this.isRight = false,
    this.isSelected = false
  });

  Color get _selectedColorRight => 
    isRight ? AppColors.darkGreen : AppColors.darkRed;
  
  Color get _selectedBorderRight => 
    isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight => 
    isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight => 
    isRight ? AppColors.green : AppColors.red;

  get _selectedTextStyleRight => 
    isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;
  
  IconData get _selectedIconRight => isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsets.only(left: 0, right: 0, bottom: 25, top: 0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? _selectedColorCardRight : AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(BorderSide(
            color: isSelected ? _selectedBorderCardRight : AppColors.border
          ))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style: isSelected ? _selectedTextStyleRight : AppTextStyles.body,
              ),
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: isSelected ? _selectedColorRight : AppColors.white,
                borderRadius: BorderRadius.circular(500),
                border: Border.fromBorderSide(BorderSide(
                  color: isSelected ? _selectedBorderRight : AppColors.border
                ))
              ),
              child: isSelected
              ? Icon(
                _selectedIconRight,//Icons.check, 
                size: 16,
                color: Colors.white,
              ): null
            ),
          ],
        ),
      ),
    );
  }
}