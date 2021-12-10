import 'package:flutter/material.dart';


import '../../constants/colors.dart';
import '../../../config/style.dart';


class BtnListSwitch extends StatelessWidget {
  const BtnListSwitch(
      {Key? key,
        required this.value,
        required this.onChanged,
        this.leading,
        required this.text})
      : super(key: key);
  final bool value;
  final Function(bool value) onChanged;
  final Widget? leading;
  final String text;
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return SwitchListTile(
      inactiveThumbColor:
      isDarkMode ? ColorConstants.neutral_grey_800 : ColorConstants.neutral_white,
      activeColor:
      isDarkMode ? ColorConstants.neutral_grey_800 : ColorConstants.neutral_white,

      activeTrackColor:
      isDarkMode ? ColorConstants.primary_301 : ColorConstants.primary_500,
      // inactiveTrackColor: Colors.yellow,
      title: Text(text,style: AppTextStyle.BODY_SEMI_BOLD(),),
      onChanged: onChanged,
      secondary: leading,
      value: value,
    );
  }
}
