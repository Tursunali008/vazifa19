import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.label,
    required this.controller,
    required this.validator,
    this.isEmail = false,
    this.isPassword = false,
    this.isLast = false,
  });

  final String label;
  final TextEditingController controller;
  final String? Function(String?) validator;
  final bool isEmail;
  final bool isPassword;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textCapitalization: TextCapitalization.words,
      keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      textInputAction: isLast ? TextInputAction.done : TextInputAction.next,
      obscureText: isPassword,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        labelText: label,
      ),
      validator: validator,
    );
  }
}