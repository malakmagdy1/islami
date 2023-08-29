import 'package:flutter/material.dart';

class UnSelectedIteam extends StatelessWidget {
  String selectedText;

  UnSelectedIteam(this.selectedText);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(selectedText),
              )),
        ),
        Icon(
          Icons.check,
          color: Colors.transparent,
        )
      ],
    );
  }
}
