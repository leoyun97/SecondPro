import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class roundbutton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color txtColor;

  const roundbutton(
      {super.key,
      required this.text,
      required this.bgColor,
      required this.txtColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 40,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 22,
            color: txtColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
