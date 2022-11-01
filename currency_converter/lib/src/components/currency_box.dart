import 'package:flutter/material.dart';
import 'package:currency_converter/src/models/currency_model.dart';

class CurrencyBox extends StatelessWidget {

  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;
  final TextEditingController controller;
  final void Function(CurrencyModel? model)? onChanged;

  const CurrencyBox(key, this.items, this.controller, this.selectedItem, this.onChanged)
  :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: DropdownButton<CurrencyModel>(
              iconEnabledColor: Color.fromARGB(255, 253, 0, 34),
              underline: Container(
                height: 1,
                color: Color.fromARGB(255, 253, 0, 34),
              ),
              isExpanded: true,
              value: selectedItem,
              items: items
              .map((e) => DropdownMenuItem(value: e, child: Text(e.name)))
              .toList(), 
              onChanged: onChanged
            )
          ),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 253, 0, 34)
                  )
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 253, 0, 34)
                  )
                )
              )
            )
          )
        ],
      ),
    );
  }
}