import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatefulWidget {
  Button({
    super.key,
    required this.buttonName,
    this.buttoncolor,
    this.textcolor,
  });

  String? buttonName;
  Color? buttoncolor;
  Color? textcolor;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: widget.buttoncolor ?? Colors.red,
      ),
      child: Center(
        child: Text(
          widget.buttonName!,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: widget.textcolor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
