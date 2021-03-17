import 'package:flutter/material.dart';

class FilledButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final Color backgroundColor;
  final Color textColor;

  const FilledButton(
      {Key key,
      this.label,
      this.onPressed,
      this.backgroundColor,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: backgroundColor,
      child: Text(label, style: TextStyle(color: textColor)),
    );
  }
}
