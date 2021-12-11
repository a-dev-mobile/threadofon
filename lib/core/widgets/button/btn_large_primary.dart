import 'package:flutter/material.dart';
import 'package:threadofon/core/constants/colors.dart';

class BtnLargePrimary extends StatelessWidget {
  const BtnLargePrimary({Key? key, required this.text, required this.onClick})
      : super(key: key);
  final String text;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    var brightness = Theme.of(context).brightness;
    bool isDarkMode = brightness == Brightness.dark;

    TextStyle? textStyle = TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        letterSpacing: 1.25,
        color: isDarkMode
            ? ConstColor.neutral_grey_800
            : ConstColor.neutral_white);
    ButtonStyle? buttonStyle = ElevatedButton.styleFrom(
        primary: Theme.of(context).primaryColor,
        shape: const StadiumBorder(),
        side: const BorderSide(
            width: 0.5, color: ConstColor.neutral_grey_400));

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onClick,
        child: Text(
          text.toUpperCase(),
          style: textStyle,
        ),
        style: buttonStyle,
      ),
    );
  }
}
