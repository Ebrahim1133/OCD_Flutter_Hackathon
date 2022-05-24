import 'package:flutter/material.dart';

class AvaterPerson extends StatelessWidget {
  const AvaterPerson(this.name,
      {this.width = 100,
      this.height = 100,
      this.bgColor,
      this.borderWidth = 0,
      this.borderColor,
      this.trBackground = false});
  final String name;
  final double width;
  final double height;
  final double borderWidth;
  final Color? borderColor;
  final Color? bgColor;
  final bool trBackground;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
            color: borderColor ?? Theme.of(context).cardColor,
            width: borderWidth),
        color: bgColor,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(name),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
