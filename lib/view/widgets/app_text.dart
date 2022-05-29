import 'package:events_book/util/app_text_styles.dart';
import 'package:events_book/util/font_type.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final FontType? fontType;
  final String label;
  final Color? textColor;
  final double? fontSize;

  const AppText(
      {Key? key,
      this.fontType = FontType.regular,
      required this.label,
      this.textColor = Colors.black,
      this.fontSize = 14.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: AppTextStyle.getAppTextStyle(textColor!, fontType!, fontSize!));
  }
}
