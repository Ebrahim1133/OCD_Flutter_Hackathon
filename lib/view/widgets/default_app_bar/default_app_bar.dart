import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget with PreferredSizeWidget {
  DefaultAppBar({
    Key? key,
    this.title = "",
    required this.titleColor,
    required this.icon,
    this.centerTitle = true,
    required this.secandicon,
    this.padding = 22,
    this.paddingRight = 0,
    this.titleSpacing = 20,
  }) : super(key: key);
  String? title;
  final Color titleColor;
  final Widget icon;
  final Widget secandicon;
  bool? centerTitle;
  double? padding;
  double? paddingRight;
  double? titleSpacing;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Padding(
          padding: EdgeInsets.only(top: padding!, right: paddingRight!),
          child: Text(
            title!,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: titleColor,
              decoration: TextDecoration.none,
            ),
          ),
        ),
        actions: [secandicon],
        titleSpacing: titleSpacing!,
        centerTitle: centerTitle!,
        leading: icon);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(80);
}
