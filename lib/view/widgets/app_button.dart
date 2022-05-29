import 'package:flutter/material.dart';

import '../../util/palette.dart';

class AppButton extends StatelessWidget {

  final VoidCallback? onClick;
  final String btnText;
  final bool isFullWidth;

  const AppButton(
      {Key? key, this.onClick, required this.btnText, this.isFullWidth = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isFullWidth
        ? Container(
            margin: const EdgeInsets.only(left: 22.0, right: 22.0),
            width: double.infinity,
            child: buttonWidget(),
          )
        : Wrap(
            children: [buttonWidget()],
          );
  }

  Widget buttonWidget() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11.0),
        ),
        primary: Palette.primaryColor,
        padding: EdgeInsets.symmetric(
            horizontal: (isFullWidth ? 15 : 6),
            vertical: (isFullWidth ? 15 : 0)),
      ),
      child: Text(
        btnText,
        style: TextStyle(
            fontFamily: "WorkSans",
            fontWeight: FontWeight.normal,
            fontSize: (isFullWidth ? 15.0 : 13.0)),
      ),
      onPressed: () {
        onClick?.call();
      },
    );
  }
}
