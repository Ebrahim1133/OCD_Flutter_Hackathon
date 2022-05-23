import 'package:flutter/material.dart';
import 'package:ocd/utils/constrants/colors/colors.dart';

class ContainerUnder extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final String textbuttom;

  const ContainerUnder({
    required this.onPressed,
    required this.text,
    required this.textbuttom,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: APPBACKGROUND,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: BLACKTEXT,
              decoration: TextDecoration.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.zero,
            child: TextButton(
              onPressed: onPressed,
              child: Text(
                textbuttom,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: MAINCOLOR,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
