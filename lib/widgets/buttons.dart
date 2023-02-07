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

class piledBox extends StatelessWidget {
  final String currency, valueName, unitName;
  final IconData moneyIcon;
  final bool isInverted;
  final conBgcolor = const Color(0xff1f2123);

  const piledBox({
    super.key,
    required this.currency,
    required this.valueName,
    required this.unitName,
    required this.moneyIcon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: isInverted ? conBgcolor : Colors.white,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currency,
                  style: TextStyle(fontSize: 30, color: isInverted ? Colors.white : conBgcolor),
                ),
                Row(
                  children: [
                    Text(
                      valueName,
                      style: TextStyle(fontSize: 25, color: isInverted ? Colors.white : conBgcolor),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      unitName,
                      style: const TextStyle(fontSize: 25, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 5,
              child: Transform.translate(
                offset: const Offset(0, 5),
                child: Icon(
                  moneyIcon,
                  color: isInverted ? Colors.white : conBgcolor,
                  size: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
