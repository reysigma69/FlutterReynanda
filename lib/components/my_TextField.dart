import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextfield extends StatelessWidget {
  final String myHint;
  final TextEditingController txtController;
  final double radius;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  const MyTextfield({
    super.key, 
    required this.myHint, 
    required this.txtController, 
    required this.radius,
    this.keyboardType,
    this.inputFormatters
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(hint: Text(myHint),border: OutlineInputBorder(borderRadius: BorderRadius.circular(radius)),
      ),
    );
  }
}