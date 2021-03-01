import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  final Color buttonBorderColor;
  final BuildContext context;
  final Widget widge;

  ProfileButton(this.buttonText, this.buttonColor, this.buttonBorderColor,
      this.buttonTextColor, this.context, this.widge);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 162.0,
      height: 48.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(color: buttonBorderColor, width: 0.1),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widge),
          );
        },
        child: Text(
          buttonText,
          style: TextStyle(
              color: buttonTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
        color: buttonColor,
      ),
    );
  }
}
