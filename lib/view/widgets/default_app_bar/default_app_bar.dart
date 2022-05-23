import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget with PreferredSizeWidget {
  DefaultAppBar(
      {Key? key,
      this.title = "",
      required this.titleColor,
      required this.onPressed,
      required this.icon,
      required this.iconColor})
      : super(key: key);
  String? title;
  final Color titleColor;
  final Function() onPressed;
  final IconData icon;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(top: 22.0),
        child: Text(
          title!,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: titleColor,
            decoration: TextDecoration.none,
          ),
        ),
      ),
      leading: IconButton(
        onPressed: onPressed,
        icon: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Icon(
            icon,
            color: iconColor,
            size: 24,
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(80);
}
