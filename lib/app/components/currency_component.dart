import 'package:flutter/material.dart';

class CurrencyComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: SizedBox(
              height: 56,
              child: DropdownButton(
                  isExpanded: true,
                  iconEnabledColor: Colors.amber,
                  underline: Container(
                    height: 1,
                    color: Colors.amber,
                  ),
                  items: [
                    DropdownMenuItem(child: Text('Real')),
                    DropdownMenuItem(child: Text('Dollar'))
                  ],
                  onChanged: (value) {}),
            )),
        SizedBox(
          width: 10,
        ),
        Expanded(
            flex: 3,
            child: TextField(
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
