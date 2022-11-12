import 'package:flutter/material.dart';
import 'package:devquizes/core/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:devquizes/core/app_colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField();


  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      onTap: () {},
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: "Digite um nome",
          labelStyle: const TextStyle(
            color: Colors.grey,
          ),
          border: UnderlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 2.0),
            borderRadius: BorderRadius.circular(8.0),
          )
      ),
    );
  }
}

class CustomTextField2 extends StatelessWidget {
  CustomTextField2();


  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.center,
      onTap: () {},
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        filled: true,
        labelText: 'Digite um nome',
        hintText: "Digite um nome",
        labelStyle: const TextStyle(
          color: Colors.grey,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 2.0),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey
          )
        ),
      ),
    );
  }
}