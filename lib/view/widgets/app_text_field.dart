import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../util/palette.dart';
import '../../viewmodel/home_provider.dart';

class AppTextField extends StatefulWidget {
  final String hint;
  final bool isObscure;
  final Function(String) onTextChanged;
  final Function? onCleared;
  final Widget? suffix;
  final Widget? prefix;
  final bool isSuffixVisible;

  const AppTextField({
    Key? key,
    required this.hint,
    this.isObscure = false,
    required this.onTextChanged,
    this.onCleared,
    this.suffix,
    this.prefix,
    this.isSuffixVisible = false,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<HomeScreenProvider>(context);
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
        filled: true,
        fillColor: Palette.bgSearchView,
        prefixIcon: const Icon(Icons.search, color: Colors.white),
        suffixIcon: Visibility(
            visible: dataProvider.query.isNotEmpty,
            child: GestureDetector(
              child: const Icon(Icons.close_outlined, color: Colors.white),
              onTap: () {
                setState(() {
                  dataProvider.query = "";
                  dataProvider.enableSearchButton();
                  textEditingController.text = "";
                  widget.onCleared?.call();
                });
              },
            )),
        hintStyle: const TextStyle(
            color: Colors.white,
            fontFamily: "WorkSans",
            fontWeight: FontWeight.normal,
            fontSize: 13),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(11.0)),
            borderSide: BorderSide(color: Palette.bgSearchView)),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(11.0)),
            borderSide: BorderSide(color: Palette.bgSearchView)),
        hintText: widget.hint,
      ),
      onChanged: (value) {
        dataProvider.query = value;
        widget.onTextChanged.call(value);
      },
      style: const TextStyle(color: Colors.white),
    );
  }
}

