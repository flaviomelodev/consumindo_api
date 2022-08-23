import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final Function(String) onChaged;
  final String label;
  final bool obscureText;
  const CustomTextFieldWidget(
      {Key? key,
      required this.onChaged,
      required this.label,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        label: Text(
          label,
          style: const TextStyle(
              color: Colors.white54, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      onChanged: onChaged,
      obscureText: obscureText,
    );
  }
}
