import 'package:flutter/material.dart';
import 'package:ocd/utils/constrants/colors/colors.dart';

class AuthTextFromField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final Function validator;
  Widget? prefixIcon;
  Widget? suffixIcon;
  final String hintText;
  final TextInputType type;
  double? padding;
  AuthTextFromField({
    required this.controller,
    required this.obscureText,
    required this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.padding = 0,
    required this.hintText,
    required this.type,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      cursorColor: Colors.black,
      keyboardType: type,
      validator: (value) => validator(value),
      style: const TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        fillColor: TEXTFIELDCOLOR,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.all(padding!),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: HINTTEXTFORMFIELD,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
