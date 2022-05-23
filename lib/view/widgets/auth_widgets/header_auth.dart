import 'package:flutter/material.dart';

class HeaderAuth extends StatelessWidget {
  HeaderAuth({
    Key? key,
    required this.firstWordFirstHeader,
    required this.secandWordFirstHeader,
    required this.firstWordFirstHeaderColor,
    required this.secandWordFirstHeaderColor,
    required this.secandTextHeader,
    required this.secandTextHeaderColor,
  }) : super(key: key);
  final String firstWordFirstHeader;

  final String secandWordFirstHeader;

  final Color firstWordFirstHeaderColor;
  final Color secandWordFirstHeaderColor;
  final String secandTextHeader;
  final Color secandTextHeaderColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              firstWordFirstHeader,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: firstWordFirstHeaderColor,
                decoration: TextDecoration.none,
              ),
            ),
            Text(
              secandWordFirstHeader,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: secandWordFirstHeaderColor,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            secandTextHeader,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: secandTextHeaderColor,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ],
    );
  }
}
