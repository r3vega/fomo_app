import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget(
      {super.key,
      required this.onChanged,
      this.initValue = "",
      this.isPassword = false,
      this.hintText = ""});

  final String initValue;
  final bool isPassword;
  final String hintText;
  final Function(String str) onChanged;
  @override
  State<TextFieldWidget> createState() => _TextFieldState();
}

class _TextFieldState extends State<TextFieldWidget> {
  InputDecoration? decoration;
  bool visibleText = true;
  @override
  void initState() {
    super.initState();
    if (widget.isPassword) {
      visibleText = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.initValue,
      onChanged: widget.onChanged,
      decoration: widget.isPassword
          ? InputDecoration(
              suffixIcon: IconButton(
              icon: Icon(
                visibleText ? Icons.remove_red_eye : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  visibleText = !visibleText;
                });
              },
            ))
          : InputDecoration(hintText: widget.hintText),
      obscureText: !visibleText,
    );
  }
}
