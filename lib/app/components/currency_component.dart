//import 'dart:html';

import 'package:conversor_moeda/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyComponent extends StatelessWidget {
  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;
  final TextEditingController controller;

  final void Function(CurrencyModel model) onChanged;

  const CurrencyComponent(
      {Key key,
      this.items,
      this.controller,
      this.onChanged,
      this.selectedItem,
      TextInputType keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: SizedBox(
              height: 56,
              child: DropdownButton<CurrencyModel>(
                  isExpanded: true,
                  value: selectedItem,
                  iconEnabledColor: Colors.amber,
                  underline: Container(
                    height: 1,
                    color: Colors.amber,
                  ),
                  items: items
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e.name),
                          ))
                      .toList(),
                  onChanged: onChanged),
            )),
        SizedBox(
          width: 10,
        ),
        Expanded(
            flex: 2,
            child: TextField(
              keyboardType: TextInputType.number,
              controller: controller,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
              ),
              cursorColor: Colors.amber,
            )),
      ],
    );
  }
}
