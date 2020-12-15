import 'package:flutter/material.dart';


class ButtonWidget extends StatelessWidget {
  ButtonWidget({@required this.onPressed, @required this.label, @required this.buttonColor, @required this.textColor});
  final Function onPressed;
  final String label;
  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RaisedButton(
            onPressed: onPressed,
            color: buttonColor,
            textColor: textColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 22.0),
              child: Text(
                label,
                style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
