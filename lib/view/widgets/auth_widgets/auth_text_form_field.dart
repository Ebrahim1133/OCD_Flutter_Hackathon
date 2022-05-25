import 'package:flutter/material.dart';
import 'package:ocd/utils/constrants/colors/colors.dart';

// ignore: must_be_immutable
class AuthTextFromField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final Function validator;
  Widget? prefixIcon;
  Widget? suffixIcon;
  final String hintText;
  final TextInputType type;
  double? padding;
  Color? formColor;
  Color? hintColor;
  Color? borderColor;
  Color? inputColor;
  AuthTextFromField({
    required this.controller,
    required this.obscureText,
    required this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.padding = 0,
    this.formColor = TEXTFIELDCOLOR,
    this.hintColor = HINTTEXTFORMFIELD,
    this.inputColor = Colors.black,
    this.borderColor = TEXTFIELDCOLOR,
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
      style: TextStyle(
        color: inputColor!,
      ),
      decoration: InputDecoration(
        fillColor: formColor,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.all(padding!),
        hintText: hintText,
        hintStyle: TextStyle(
          color: hintColor,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor!),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor!),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor!),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor!),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
