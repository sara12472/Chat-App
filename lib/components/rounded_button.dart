import 'package:chat_app/constant.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  late final Color color;
  late final String text;
  late final VoidCallback onPressed;

  RoundedButton({
    required this.color,
    required this.text,
    required this.onPressed,
  }) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5.0,
          minimumSize: Size(double.infinity, 55),
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        onPressed: onPressed,
        child: Text(text, style: KRoundedButtonTextStyle),
      ),
    );
  }
}
