import 'package:flutter/material.dart';

class OnelineTextFieldWidget extends StatelessWidget {
  OnelineTextFieldWidget();

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