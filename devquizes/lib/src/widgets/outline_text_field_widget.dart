import 'package:flutter/material.dart';

class OutlineTextFieldWidget extends StatelessWidget {
  OutlineTextFieldWidget();
  
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