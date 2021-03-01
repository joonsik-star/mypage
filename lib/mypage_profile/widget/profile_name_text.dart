import 'package:flutter/material.dart';

class MyPageText extends StatelessWidget {
  final String textTilte;
  final double textSize;
  final Color textColor;

  MyPageText(this.textTilte, this.textSize, this.textColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(textTilte,
          style: TextStyle(
            fontSize: textSize,
            color: textColor,
          )),
    );
  }
}
