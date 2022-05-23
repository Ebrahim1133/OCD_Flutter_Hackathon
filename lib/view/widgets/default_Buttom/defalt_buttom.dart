import 'package:flutter/material.dart';

class DefaultButtom extends StatelessWidget {
  const DefaultButtom(
      {Key? key,
      required this.textButtom,
      required this.backgroundColor,
      required this.borderColor,
      required this.textColor,
      required this.onpressed,
      required this.width,
      required this.height})
      : super(key: key);
  final String textButtom;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final Function() onpressed;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: MaterialButton(
          minWidth: width,
          height: height,
          color: backgroundColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: borderColor)),
          onPressed: onpressed,
          child: Text(
            textButtom,
            style: TextStyle(
                color: textColor, fontSize: 12, fontWeight: FontWeight.w600),
          )),
    );
  }
}
