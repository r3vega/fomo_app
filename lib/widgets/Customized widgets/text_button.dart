import 'package:flutter/material.dart';

class TextButtonWidget extends StatefulWidget {
  const TextButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final String text;
  final VoidCallback onPressed;
  @override
  State<TextButtonWidget> createState() => _TextButtonState();
}

class _TextButtonState extends State<TextButtonWidget> {
  InputDecoration? decoration;
  bool visibleText = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: widget.onPressed, child: Text(widget.text));
  }
}
